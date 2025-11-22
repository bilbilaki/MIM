
import '../model_core/fs_entry.dart';
import '../model_core/fs_entry_union.dart';
import '../model_core/fs_file_data.dart';
/// Typed wrapper for image files providing convenient, type-safe accessors.
class ImageItem {
      final FsFile _file;

  /// Creates an [ImageItem] from an [FsEntry].
  ///
  /// Validates that the entry is a file with [FileKind.image].
  /// Throws [ArgumentError] if validation fails.
  ImageItem(FsEntry entry)
      : _file = (() {
              if (entry is! FsFile) {
                throw ArgumentError('ImageItem can only wrap file entries');
          }
          if (entry.base.kind != FileKind.image) {
                throw ArgumentError('ImageItem requires FileKind.image, got ${entry.base.kind}');
          }
          return entry;
        })();

  /// Creates an [ImageItem] directly from an [FsFile].
  ///
  /// Validates that the file has [FileKind.image].
  /// Throws [ArgumentError] if validation fails.
  ImageItem.fromFile(FsFile file)
      : _file = (() {
              if (file.base.kind != FileKind.image) {
                throw ArgumentError('ImageItem requires FileKind.image, got ${file.base.kind}');
          }
          return file;
        })();

  /// The underlying file entry.
  FsFile get file => _file;

  /// The underlying filesystem entry.
  FsEntry get entry => _file;

  // Core identity delegates
  String get id => _file.base.id;
  String get path => _file.base.path;
  String get name => _file.base.name;
  String? get extension => _file.base.extension;
  FileKind get kind => _file.base.kind;
  int? get sizeBytes => _file.base.sizeBytes;
  EntryStatus get status => _file.base.status;
  EntryAccess? get access => _file.base.access;
  EntryTimestamps? get timestamps => _file.base.timestamps;
  EntryMeta? get meta => _file.base.meta;

  // File data delegates
  StorageLocation get location => _file.data.location;
  String? get mime => _file.data.mime;
  bool get isContentAvailable => _file.data.isContentAvailable;
  List<FileConversionCapability> get convertibleTo => _file.data.convertibleTo;

  /// Typed image metadata from [FileTypeMeta.image].
  ImageMeta? get imageMeta => _file.data.typeMeta?.maybeMap(
            image: (meta) => meta.image,
        orElse: () => null,
      );

  // Convenience getters for common image properties
  int? get width => imageMeta?.width;
  int? get height => imageMeta?.height;
  String? get colorSpace => imageMeta?.colorSpace;
  int? get dpi => imageMeta?.dpi;

  /// Checks if this image can be converted to the specified target extension.
  bool canConvertTo(String targetExtension) =>
      convertibleTo.any((capability) => capability.targetExtensions.contains(targetExtension));

  /// Checks if this image can be converted to the specified target kind.
  bool canConvertToKind(FileKind targetKind) =>
      convertibleTo.any((capability) => capability.targetKind == targetKind);

  /// Gets all target extensions this image can be converted to.
  List<String> get supportedTargetExtensions =>
      convertibleTo.expand((capability) => capability.targetExtensions).toList();

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is ImageItem && runtimeType == other.runtimeType && _file == other._file;

  @override
  int get hashCode => _file.hashCode;

  @override
  String toString() => 'ImageItem(${_file.base.path})';
}

// import 'dart:io';

// import 'entries.dart';

// /// Represents an image file
// class ImageItem extends Entries{
//   final String path;
//   final String name;
//   final int size;
//   final DateTime? modifiedDate;
//   final String extension;
//   final int? width;
//   final int? height;
//   final bool isFromArchive;

//   ImageItem({
//     required this.path,
//     required this.name,
//     required this.size,
//     this.modifiedDate,
//     required this.extension,
//     this.width,
//     this.height,
//     this.isFromArchive = false,
//   });

//   /// Create from FileSystemEntity
//   factory ImageItem.fromFileSystem(File file, FileStat stat) {
//     final path = file.path;
//     final name = path.split('/').last;
//     final extension = name.split('.').last.toLowerCase();

//     return ImageItem(
//       path: path,
//       name: name,
//       size: stat.size,
//       modifiedDate: stat.modified,
//       extension: extension,
//       isFromArchive: false,
//     );
//   }

//   /// Create from ZipEntryInfo
//   factory ImageItem.fromZipEntry(dynamic zipEntry) {
//     final path = zipEntry.path as String;
//     final name = path.split('/').last;
//     final extension = name.split('.').last.toLowerCase();

//     return ImageItem(
//       path: path,
//       name: name,
//       size: zipEntry.originalSize as int,
//       modifiedDate: zipEntry.modifiedDateTime as DateTime?,
//       extension: extension,
//       isFromArchive: true,
//     );
//   }

//   /// Create from Map
//   factory ImageItem.fromMap(Map<String, dynamic> map) {
//     return ImageItem(
//       path: map['path'] as String,
//       name: map['name'] as String,
//       size: map['size'] as int,
//       modifiedDate: map['modifiedDate'] != null
//           ? DateTime.fromMillisecondsSinceEpoch(map['modifiedDate'] as int)
//           : null,
//       extension: map['extension'] as String,
//       width: map['width'] as int?,
//       height: map['height'] as int?,
//       isFromArchive: map['isFromArchive'] as bool? ?? false,
//     );
//   }

//   /// Convert to Map
//   Map<String, dynamic> toMap() {
//     return {
//       'path': path,
//       'name': name,
//       'size': size,
//       'modifiedDate': modifiedDate?.millisecondsSinceEpoch,
//       'extension': extension,
//       'width': width,
//       'height': height,
//       'isFromArchive': isFromArchive,
//     };
//   }

//   /// Formatted file size
//   String get formattedSize => _formatBytes(size);

//   /// Resolution string (e.g., "1920x1080")
//   String? get resolution {
//     if (width == null || height == null) return null;
//     return '${width}x$height';
//   }

//   /// Aspect ratio (e.g., 16:9)
//   String? get aspectRatio {
//     if (width == null || height == null) return null;
//     final gcd = _gcd(width!, height!);
//     return '${width! ~/ gcd}:${height! ~/ gcd}';
//   }

//   /// Megapixels
//   double? get megapixels {
//     if (width == null || height == null) return null;
//     return (width! * height!) / 1000000;
//   }

//   int _gcd(int a, int b) {
//     while (b != 0) {
//       final t = b;
//       b = a % b;
//       a = t;
//     }
//     return a;
//   }

//   String _formatBytes(int bytes) {
//     if (bytes < 1024) return '$bytes B';
//     if (bytes < 1024 * 1024) return '${(bytes / 1024).toStringAsFixed(1)} KB';
//     if (bytes < 1024 * 1024 * 1024) {
//       return '${(bytes / (1024 * 1024)).toStringAsFixed(1)} MB';
//     }
//     return '${(bytes / (1024 * 1024 * 1024)).toStringAsFixed(1)} GB';
//   }

//   /// Copy with modifications
//   ImageItem copyWith({
//     String? path,
//     String? name,
//     int? size,
//     DateTime? modifiedDate,
//     String? extension,
//     int? width,
//     int? height,
//     bool? isFromArchive,
//   }) {
//     return ImageItem(
//       path: path ?? this.path,
//       name: name ?? this.name,
//       size: size ?? this.size,
//       modifiedDate: modifiedDate ?? this.modifiedDate,
//       extension: extension ?? this.extension,
//       width: width ?? this.width,
//       height: height ?? this.height,
//       isFromArchive: isFromArchive ?? this.isFromArchive,
//     );
//   }

//   /// Common image extensions
//   static const imageExtensions = {
//     'jpg', 'jpeg', 'png', 'gif', 'bmp', 'webp', 'svg', 'ico', 'tiff', 'tif', 'heic', 'heif'
//   };

//   /// Check if extension is an image format
//   static bool isImageExtension(String ext) {
//     return imageExtensions.contains(ext.toLowerCase());
//   }

//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) return true;
//     return other is ImageItem && other.path == path;
//   }

//   @override
//   int get hashCode => path.hashCode;

//   @override
//   String toString() => 'ImageItem(path: $path, name: $name, size: $formattedSize${resolution != null ? ', resolution: $resolution' : ''})';
// }
