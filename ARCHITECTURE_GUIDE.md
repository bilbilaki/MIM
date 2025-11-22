# Domain Model Architecture - Design Guidelines

## Architecture Layers

```
┌─────────────────────────────────────────────────────────┐
│                     UI Layer                             │
│  (LocalScreen, GridView, ListItems, Dialogs)            │
└────────────────────┬────────────────────────────────────┘
                     │ uses
                     ▼
┌─────────────────────────────────────────────────────────┐
│                 Provider Layer                           │
│  (LocalProvider, UserDataService)                       │
│  - Manages state using ChangeNotifier                   │
│  - Exposes both legacy (File/Directory) and new         │
│    (FsEntry) getters for gradual migration              │
└────────────────────┬────────────────────────────────────┘
                     │ uses
                     ▼
┌─────────────────────────────────────────────────────────┐
│             Task & Task Execution Layer                  │
│  - CopyFileTask, MoveFileTask, etc. (58 tasks)          │
│  - TaskQueue (future)                                   │
│  - TaskExecutor (future)                                │
└────────────────────┬────────────────────────────────────┘
                     │ uses
                     ▼
┌─────────────────────────────────────────────────────────┐
│               Repository Layer                           │
│  - FsRepository interface (abstract)                     │
│  - LocalFsRepository ✓ (concrete for local files)       │
│  - SMBFsRepository (future)                             │
│  - CloudFsRepository (future)                           │
│                                                          │
│  Key responsibility: Convert filesystem entities        │
│  to domain models and back                              │
└────────────────────┬────────────────────────────────────┘
                     │ uses
                     ▼
┌─────────────────────────────────────────────────────────┐
│              Domain Model Layer                          │
│  (FsEntry sealed union architecture)                    │
│  - FsEntry.file() → FsFile                              │
│  - FsEntry.folder() → FsFolder                          │
│  - Immutable (Freezed)                                  │
│  - Type-safe metadata                                   │
└────────────────────┬────────────────────────────────────┘
                     │ uses
                     ▼
┌─────────────────────────────────────────────────────────┐
│           Filesystem Abstraction Layer                   │
│  (dart:io File, Directory, FileSystemEntity)            │
│  - Only LocalFsRepository should interact directly      │
│  - All other code accesses via FsEntry                  │
└─────────────────────────────────────────────────────────┘
```

## Data Flow: Listing a Directory

```
User clicks on folder
        │
        ▼
LocalScreen._openFolder(path)
        │
        ▼
LocalProvider.refresh(path)
        │
        ▼
LocalProvider._refreshList(path)
        │
        ├──▶ [Legacy] dir.listSync() → File/Directory lists
        │    (Maintains backward compatibility)
        │
        └──▶ [New] LocalFsRepository.listContents(path)
             ├─▶ Directory.list() yields FileSystemEntity
             │
             ├─▶ For each File: _createFileEntry()
             │   ├─ stat.size
             │   ├─ FileSystemEntity.type()
             │   ├─ lookupMimeType()
             │   ├─ _determineFileKind()
             │   └─ return FsEntry.file()
             │
             ├─▶ For each Directory: _createFolderEntry()
             │   └─ return FsEntry.folder()
             │
             └─▶ return List<FsEntry>
                 │
                 └─▶ LocalProvider._currentEntries = entries
                     │
                     └─▶ UI rebuilds using entries
```

## Wrapper Pattern for Type-Specific Logic

The **Wrapper Pattern** (as seen in `ImageItem`) allows adding type-specific logic without bloating `FsEntry`:

```dart
// ✓ Domain Model - Dumb data container
FsEntry.file(
  base: FsEntryBase(...),
  data: FsFileData(mime: 'image/png', ...),
)

// ✓ Type-specific Wrapper - Smart logic
class ImageItem {
  final FsFile _file;
  
  factory ImageItem(FsEntry entry) {
    // Validation & conversion
  }
  
  int? get width => imageMeta?.width;
  bool canConvertTo(String ext) => ...;
}

// ✓ Task for Operations
class ExtractAudioTask {
  Future<void> run(FsRepository fs) async {
    final video = VideoItem(videoEntry);
    // Use video.path to extract
  }
}
```

**Benefits:**
- `FsEntry` stays clean and focused
- Easy to extend with new file types
- Can lazy-load expensive metadata
- Type safety without runtime checks
- Testable in isolation

## File Kind Classification Logic

`LocalFsRepository._determineFileKind()` uses a two-pass strategy:

### Pass 1: MIME Type (Primary - Most Reliable)
```
mime.startsWith('image/')  → FileKind.image
mime.startsWith('video/')  → FileKind.video
mime.startsWith('audio/')  → FileKind.audio
mime.startsWith('text/')   → FileKind.document
mime.contains('json')      → FileKind.document
mime.contains('xml')       → FileKind.document
```

### Pass 2: Extension (Fallback)
```
.mp4, .avi, .mkv, ...     → FileKind.video
.mp3, .flac, .wav, ...    → FileKind.audio
.jpg, .png, .gif, ...     → FileKind.image
.zip, .rar, .7z, ...      → FileKind.archive
.dart, .java, .py, ...    → FileKind.code
.txt, .md, .pdf, ...      → FileKind.document
.apk                       → FileKind.apk
.json                      → FileKind.json
.csv                       → FileKind.csv
.md                        → FileKind.markdown
(else)                     → FileKind.unknown
```

**Extension sets are defined as constants** for easy maintenance and testing.

## Backward Compatibility Strategy

### Phase 1: ✅ Dual-Mode (Current)
```
LocalProvider has BOTH:
- Legacy getters: folders, movies, audios, images, documents
- New getters: entries, videoEntries, audioEntries, imageEntries, documentEntries

UI can use either, enabling gradual migration
```

### Phase 2: Gradual Adoption
- Convert component screens one by one
- New screens use `_getSortedItemsFromDomainModel()`
- Old screens continue using `_getSortedItems()`
- No force migration = lower risk

### Phase 3: Full Migration (Future)
- Remove legacy getters when all screens converted
- Remove `_getSortedItems()` method
- Simplify LocalProvider

## Adding Support for New Storage Backends

Example: Adding SMB (Samba/Network Shares)

```dart
// 1. Create SMBFsRepository
class SMBFsRepository implements FsRepository {
  final SmbClient _client;
  
  @override
  Future<FsEntry?> getEntry(String id) async {
    // Use SMB protocol instead of dart:io
    final smbFile = await _client.stat(id);
    return _createEntryFromSmbFile(smbFile);
  }
  
  @override
  Future<FsFile> copyFile({...}) async {
    // SMB copy implementation
  }
}

// 2. LocalProvider can accept repository injection
class LocalProvider extends ChangeNotifier {
  final FsRepository _repository; // Could be Local, SMB, Cloud
  
  LocalProvider({FsRepository? repository}) 
    : _repository = repository ?? LocalFsRepository();
}

// 3. Same code works for all backends!
Future<void> refresh(String path) async {
  _currentEntries = await _repository.listContents(path);
  notifyListeners();
}
```

## Task Execution Flow (Future Implementation)

```dart
// User clicks: Extract Audio from Video
// 1. UI creates task
final task = ExtractAudioTask(
  videoFileId: videoEntry.id,
  targetFolderId: currentFolderId,
);

// 2. Queue task
final taskQueue = TaskQueue();
taskQueue.enqueue(task);

// 3. Execute (eventually)
final result = await task.run(
  _fsRepository,
  cancel: cancellationToken,
);

// 4. Result becomes new FsEntry
final audioEntry = result.audioFile; // FsEntry.file(kind: audio)
```

## Metadata Extraction (When to Implement)

### Eager Loading (Current)
- File size ✓
- Timestamps ✓
- Extension ✓
- MIME type ✓

### Lazy Loading (Future Enhancement)
- Image dimensions (expensive on large images)
- Video duration/codec (requires ffmpeg or similar)
- Audio bitrate/sample rate
- Document page count (requires parsing)

**Implementation pattern:**
```dart
// In LocalFsRepository
FileTypeMeta? _createTypeMeta(FileKind kind, String filePath) {
  // Return null now - metadata loaded on-demand
  return null;
}

// In ImageItem
ImageMeta? get imageMeta {
  // Lazy load when accessed
  if (_cachedMeta == null) {
    _cachedMeta = _extractImageMeta(_file.data.location);
  }
  return _cachedMeta;
}
```

## Common Patterns

### Pattern 1: Filter Entries by Kind
```dart
// ✓ New way
final images = entries.where((e) => e.kind == FileKind.image).toList();

// ✗ Old way
final images = imageFiles.toList(); // Had separate list
```

### Pattern 2: Type-Safe Operations
```dart
// ✓ Using wrapper
try {
  final image = ImageItem(entry);
  final width = image.width;
} catch (e) {
  // Invalid entry
}

// ✗ Without wrapper
if (entry.kind == FileKind.image) {
  final image = entry as FsFile; // Unsafe cast
}
```

### Pattern 3: Dependency Injection
```dart
// ✓ Task uses injected repository
class CopyFileTask {
  Future<CopyFileResult> run(FsRepository fs) async {
    // Works with any FsRepository implementation
  }
}

// ✗ Hardcoded dependency
class OldCopyFile {
  Future<void> copy() async {
    final file = File(path); // Hard to test, no abstraction
  }
}
```

## Next Implementation Steps

1. **Immediate (Low Effort)**
   - [ ] Fix unused warnings by using new getters in components
   - [ ] Add unit tests for `LocalFsRepository`

2. **Short Term (Medium Effort)**
   - [ ] Implement `TaskQueue` and `TaskExecutor`
   - [ ] Implement `CancellationToken`
   - [ ] Add progress reporting to tasks
   - [ ] Create `VideoItem`, `AudioItem` wrappers

3. **Medium Term (High Effort)**
   - [ ] Lazy-load image metadata
   - [ ] Implement SMB repository
   - [ ] Add cloud storage support

4. **Long Term (Ongoing)**
   - [ ] Gradual UI migration to domain model
   - [ ] Performance optimization
   - [ ] Advanced features (symbolic links, special files, etc.)
