# File Type Detection Using Magic Numbers

## Overview
This implementation adds a fallback mechanism to detect file types for unknown files (files without extensions) using the `file_magic_number` package to inspect file signatures (magic numbers/bytes).

## Changes Made

### 1. **local_screen_item_builders.dart**

#### Added Magic Number to FileKind Mapping
```dart
static final Map<FileMagicNumberType, FileKind> magicNumberToFileKind = {
  // Archives
  FileMagicNumberType.zip: FileKind.archive,
  FileMagicNumberType.rar: FileKind.archive,
  FileMagicNumberType.sevenZ: FileKind.archive,
  FileMagicNumberType.tar: FileKind.archive,
  // Images
  FileMagicNumberType.png: FileKind.image,
  FileMagicNumberType.jpg: FileKind.image,
  FileMagicNumberType.gif: FileKind.image,
  // ... more types
};
```

#### Added Detection Function
`detectFileKindFromMagicNumber(String filePath)` - Asynchronously detects file kind using magic numbers

#### Enhanced Thumbnail Building
- `buildThumbnailOrIcon()` now handles unknown files specially
- `_buildUnknownFileThumbnailWithDetection()` - Uses magic numbers as fallback for unknown files
- Automatically determines proper icons and attempts thumbnail generation based on detected type

### 2. **local_explorer_provider.dart**

#### Added Import
```dart
import 'package:file_magic_number/file_magic_number.dart';
```

#### Added Magic Number Detection Method
```dart
Future<FileKind> detectFileKindFromMagicNumber(String filePath) async
```
- Maps `FileMagicNumberType` to `FileKind` enum
- Used as a last resort for files that don't have extensions

## Supported File Types via Magic Numbers

| Category | Types |
|----------|-------|
| **Archives** | ZIP, RAR, 7Z, TAR |
| **Images** | PNG, JPG, GIF, BMP, TIFF, HEIC, WebP |
| **Videos** | MP4, AVI |
| **Audio** | MP3, WAV |
| **Documents** | PDF, SQLite |

## How It Works

### Detection Flow
```
1. User taps on a file without extension
   ↓
2. buildFileTile() checks provider.isUnknownFile()
   ↓
3. If unknown → buildThumbnailOrIcon() calls _buildUnknownFileThumbnailWithDetection()
   ↓
4. Calls detectFileKindFromMagicNumber() with file path
   ↓
5. File magic numbers are inspected (reading first bytes)
   ↓
6. Mapped to FileKind (archive, image, video, audio, document, unknown)
   ↓
7. Proper icon and thumbnail logic applied based on detected type
```

### Example Scenarios

**Scenario 1: File named "document" (no extension)**
- Magic bytes: `25 50 44 46` (PDF signature)
- Detected as: `FileKind.document`
- Displays: Document icon + PDF thumbnail

**Scenario 2: File named "data" (no extension)**
- Magic bytes: `50 4B 03 04` (ZIP signature)
- Detected as: `FileKind.archive`
- Displays: Archive icon + can be extracted

**Scenario 3: File named "unknown_file"**
- Magic bytes: Unrecognized
- Detected as: `FileKind.unknown`
- Displays: Unknown file icon

## Performance Considerations

- Magic number detection is done **asynchronously** using `FutureBuilder`
- Only reads first few bytes of file (< 512 bytes typically)
- Minimal performance impact
- Results aren't cached (re-detected on each UI rebuild - can be optimized if needed)

## Extensibility

To add support for more file types:

1. Check if `FileMagicNumberType` has the constant
2. Add case to the switch statement in `detectFileKindFromMagicNumber()`
3. Return appropriate `FileKind`
4. Update the `magicNumberToFileKind` map

Example:
```dart
case FileMagicNumberType.exe:
  return FileKind.unknown; // or create FileKind.executable
```

## Testing Recommendations

1. Create test files without extensions with various file signatures
2. Test archive detection (ZIP, RAR)
3. Test image detection (PNG, JPG)
4. Test edge cases (empty files, corrupted files)
5. Verify thumbnail generation for detected types

## Future Improvements

- [ ] Cache detection results for better performance
- [ ] Add more file type mappings as `FileMagicNumberType` expands
- [ ] Create custom file type categories (executable, system, etc.)
- [ ] Add configuration option to disable magic number detection if needed
