# Quick Start: Using the New Domain Model Architecture

## For UI Developers

### Accessing Entries with New Domain Model

```dart
// In LocalScreen or any Consumer<LocalProvider>
final provider = Provider.of<LocalProvider>(context);

// Get all entries
final allEntries = provider.entries;

// Filter by type (instead of having separate lists)
final images = provider.imageEntries;      // FileKind.image only
final videos = provider.videoEntries;      // FileKind.video only
final documents = provider.documentEntries; // FileKind.document only
final folders = provider.folderEntries;    // Folders only

// Work with individual entry
FsEntry entry = provider.entries[0];
if (entry.isFile) {
  final file = entry as FsFile;
  print(file.name);      // 'photo.jpg'
  print(file.path);      // '/storage/...'
  print(file.kind);      // FileKind.image
  print(file.data.mime); // 'image/jpeg'
}

if (entry.isFolder) {
  final folder = entry as FsFolder;
  print(folder.name);  // 'MyFolder'
}
```

### Converting GridItem for New Model

```dart
// Old way (still works)
List<GridItem> items = provider.folders
  .map((dir) => GridItem(dir))
  .toList();

// New way
List<GridItem> items = provider.entries
  .map((entry) => GridItem.fromFsEntry(entry))
  .toList();

// Using GridItem
GridItem item = items[0];
print(item.name);     // Works for both legacy and new
print(item.path);     // Works for both legacy and new
print(item.isFolder); // Works for both legacy and new
```

### Accessing File Metadata

```dart
// With FsEntry
final entry = provider.entries[0];
if (entry is FsFile) {
  print(entry.base.sizeBytes);         // File size in bytes
  print(entry.base.timestamps?.createdAt);  // Creation time
  print(entry.base.timestamps?.modifiedAt); // Last modified
  print(entry.data.mime);              // MIME type
  
  // For images (use wrapper for cleaner access)
  try {
    final image = ImageItem(entry);
    print(image.width);   // Image width if available
    print(image.height);  // Image height if available
  } catch (e) {
    // Not an image or invalid
  }
}
```

## For Task Implementation

### Writing Tasks Using Repository

```dart
// Tasks receive FsRepository injected (see copy_file.dart pattern)
class MyTask {
  Future<Result> run(FsRepository fs, {CancellationToken? cancel}) async {
    // Get an entry by path
    final source = await fs.getEntry(sourcePath);
    if (source == null) throw StateError('File not found');
    
    // Ensure it's a file
    if (source is! FsFile) throw StateError('Not a file');
    
    // Perform your operation
    final copied = await fs.copyFile(
      sourceFileId: source.id,
      targetFolderId: targetFolderId,
    );
    
    return Result(success: true, file: copied);
  }
}
```

### Creating New Wrappers (Type-Specific Logic)

```dart
// Pattern: Follow ImageItem structure

class VideoItem {
  final FsFile _file;
  
  const VideoItem._(this._file);
  
  factory VideoItem(FsEntry entry) {
    if (entry is! FsFile) {
      throw ArgumentError('VideoItem requires a file entry');
    }
    if (entry.kind != FileKind.video) {
      throw ArgumentError('VideoItem requires FileKind.video');
    }
    return VideoItem._(entry);
  }
  
  // Getters delegate to underlying file
  String get path => _file.path;
  String? get mimeType => _file.data.mime;
  
  // Add video-specific getters
  VideoMeta? get videoMeta => _file.data.typeMeta?.maybeMap(
    video: (v) => v.video,
    orElse: () => null,
  );
  
  double? get durationSeconds => videoMeta?.durationSeconds;
  int? get width => videoMeta?.width;
  int? get height => videoMeta?.height;
  
  // Custom methods
  bool get isLandscape => (width ?? 0) > (height ?? 0);
  
  String? get resolution => 
    width != null && height != null ? '${width}x$height' : null;
}
```

## For Repository Implementation

### Extending for New Backends

```dart
// 1. Implement the interface
class MyCustomRepository implements FsRepository {
  @override
  Future<FsEntry?> getEntry(String id) async {
    // Your backend-specific logic
  }
  
  @override
  Future<FsEntry?> getEntryByPath(String path) async {
    // Your backend-specific logic
  }
  
  @override
  Future<FsFile> copyFile({
    required String sourceFileId,
    required String targetFolderId,
    String? newName,
    bool overwrite = false,
  }) async {
    // Your backend-specific copy logic
  }
}

// 2. Use in LocalProvider (when dependency injection ready)
class LocalProvider extends ChangeNotifier {
  final FsRepository _repository;
  
  LocalProvider({FsRepository? repository})
    : _repository = repository ?? LocalFsRepository();
  
  Future<void> refresh(String path) async {
    _currentEntries = await _repository.listContents(path);
    notifyListeners();
  }
}
```

## Common Tasks

### List all images in current directory
```dart
final images = provider.entries
  .where((e) => e.kind == FileKind.image)
  .toList();

for (final image in images) {
  print('${image.name} - ${image.sizeBytes} bytes');
}
```

### Get file extension
```dart
final entry = provider.entries[0];
final ext = entry.extension; // Already computed in base
print(ext); // '.jpg'
```

### Check if entry is readable/writable
```dart
final entry = provider.entries[0];
final readable = entry.base.access?.readable ?? false;
final writable = entry.base.access?.writable ?? false;
```

### Handle different file kinds
```dart
entry.map(
  file: (f) {
    switch(f.kind) {
      case FileKind.image:
        print('Image: ${f.name}');
      case FileKind.video:
        print('Video: ${f.name}');
      case FileKind.audio:
        print('Audio: ${f.name}');
      default:
        print('Other: ${f.name}');
    }
  },
  folder: (folder) {
    print('Folder: ${folder.name}');
  },
);
```

### Sorting entries by kind
```dart
// Group by kind
final grouped = groupBy(
  provider.entries,
  (entry) => entry.kind,
);

// Sort entries within each group
for (final kind in grouped.entries) {
  print('${kind.key}:');
  final sorted = kind.value..sort((a, b) => a.name.compareTo(b.name));
  for (final entry in sorted) {
    print('  ${entry.name}');
  }
}
```

## Migration Checklist

### From Old to New Architecture

```
□ Understand FsEntry structure (read fs_entry.dart)
□ Update your screen to use provider.entries
□ Replace hardcoded type checks with FileKind enums
□ Use entry.map() for type-safe operations
□ Create wrappers for type-specific logic
□ Update grid/list builders to use GridItem.fromFsEntry()
□ Remove separate lists (folders, movies, etc.) - use filters instead
□ Test file operations with new repository
□ Profile performance
□ Deploy!
```

## Troubleshooting

### "Entry is not a FsFile"
```dart
// ✗ Wrong
final file = entry as FsFile;

// ✓ Correct
if (entry is FsFile) {
  final file = entry;
}

// ✓ Or using map
entry.map(
  file: (f) { ... },
  folder: (folder) { ... }
);
```

### "FileKind is not recognized"
```dart
// Check model_core/fs_entry.dart for all valid kinds
final validKinds = FileKind.values;
print(validKinds); // Lists all available kinds
```

### "MIME type is null"
```dart
// MIME detection might fail for some files
final mime = entry.data.mime ?? 'application/octet-stream';

// Use FileKind as primary identifier instead
final kind = entry.kind; // More reliable
```

### "Performance issue with large directories"
```dart
// Folders use lazy loading (isPartial: true)
// Metadata is not eagerly extracted
// Implement lazy metadata extraction in wrappers
// Profile with provider.entries.length first

// Use pagination/virtualization for UI
ScrollView(
  viewportBuilder: (context, offset) {
    return ListView.builder(
      itemCount: provider.entries.length,
      itemBuilder: (context, index) {
        final entry = provider.entries[index];
        // Only builds visible items
      },
    );
  },
);
```

## Resources

- **Model Details:** See `lib/models/model_core/fs_entry.dart`
- **Repository Interface:** See `lib/models/model_files/tasks/copy_file.dart`
- **Example Implementation:** See `lib/repositories/local_fs_repository.dart`
- **Example Wrapper:** See `lib/models/model_files/image_item.dart`
- **Architecture Guide:** Read `ARCHITECTURE_GUIDE.md` for deep dive

## Questions?

Refer to:
1. `IMPLEMENTATION_SUMMARY.md` - What was implemented
2. `ARCHITECTURE_GUIDE.md` - How the architecture works
3. Inline code comments in `LocalFsRepository` and `ImageItem`
4. Type definitions in `fs_entry.dart` and `fs_file_data.dart`
