
import '../model_core/fs_entry.dart';
import '../model_core/fs_entry_union.dart';
import '../model_core/fs_file_data.dart';

/// Typed view for video/movie files.
class MovieItem {
      final FsEntry _entry;

  MovieItem(FsEntry entry) : _entry = entry {
        assert(entry is FsFile, 'MovieItem must wrap a file entry');
    assert(entry.kind == FileKind.video, 'MovieItem must be of kind video');
  }

  /// Get the underlying file entry
  FsFile get file => _entry as FsFile;

  /// Get the underlying entry
  FsEntry get entry => _entry;

  // Core identity delegates
  String get id => file.base.id;
  String get path => file.base.path;
  String get name => file.base.name;
  String? get extension => file.base.extension;
  int? get sizeBytes => file.base.sizeBytes;
  EntryStatus get status => file.base.status;
  EntryAccess? get access => file.base.access;
  EntryTimestamps? get timestamps => file.base.timestamps;
  EntryMeta? get meta => file.base.meta;

  // File data delegates
  StorageLocation get location => file.data.location;
  String? get mime => file.data.mime;
  bool get isContentAvailable => file.data.isContentAvailable;
  List<FileConversionCapability> get convertibleTo => file.data.convertibleTo;

  /// Video-specific metadata
  VideoMeta? get videoMeta {
        final typeMeta = file.data.typeMeta;
    if (typeMeta != null && typeMeta is FileTypeMetaVideo) {
          return typeMeta.video;
    }
    return null;
  }

  // Convenience getters for video properties
  double? get durationSeconds => videoMeta?.durationSeconds;
  int? get width => videoMeta?.width;
  int? get height => videoMeta?.height;
  double? get fps => videoMeta?.fps;

  /// Check if video can be converted to specific target kind
  bool canConvertTo(FileKind targetKind) {
        return convertibleTo.any((capability) => capability.targetKind == targetKind);
  }

  /// Get conversion capabilities for specific target kind
  List<FileConversionCapability> getConversionCapabilities(FileKind targetKind) {
        return convertibleTo
        .where((capability) => capability.targetKind == targetKind)
        .toList();
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MovieItem && runtimeType == other.runtimeType && _entry == other._entry;

  @override
  int get hashCode => _entry.hashCode;

  @override
  String toString() => 'MovieItem($name)';
}
// import 'dart:io';

// import 'entries.dart';

// /// Represents a video/movie file
// class MovieItem extends Entries{
//   final String path;
//   final String name;
//   final int size;
//   final DateTime? modifiedDate;
//   final String extension;
//   final int? durationSeconds; // Video duration if available
//   final String? resolution; // e.g., "1920x1080"
//   final bool isFromArchive;

//   MovieItem({
//     required this.path,
//     required this.name,
//     required this.size,
//     this.modifiedDate,
//     required this.extension,
//     this.durationSeconds,
//     this.resolution,
//     this.isFromArchive = false,
//   });

//   /// Create from FileSystemEntity
//   factory MovieItem.fromFileSystem(File file, FileStat stat) {
//     final path = file.path;
//     final name = path.split('/').last;
//     final extension = name.split('.').last.toLowerCase();

//     return MovieItem(
//       path: path,
//       name: name,
//       size: stat.size,
//       modifiedDate: stat.modified,
//       extension: extension,
//       isFromArchive: false,
//     );
//   }

//   /// Create from ZipEntryInfo
//   factory MovieItem.fromZipEntry(dynamic zipEntry) {
//     final path = zipEntry.path as String;
//     final name = path.split('/').last;
//     final extension = name.split('.').last.toLowerCase();

//     return MovieItem(
//       path: path,
//       name: name,
//       size: zipEntry.originalSize as int,
//       modifiedDate: zipEntry.modifiedDateTime as DateTime?,
//       extension: extension,
//       isFromArchive: true,
//     );
//   }

//   /// Create from Map
//   factory MovieItem.fromMap(Map<String, dynamic> map) {
//     return MovieItem(
//       path: map['path'] as String,
//       name: map['name'] as String,
//       size: map['size'] as int,
//       modifiedDate: map['modifiedDate'] != null
//           ? DateTime.fromMillisecondsSinceEpoch(map['modifiedDate'] as int)
//           : null,
//       extension: map['extension'] as String,
//       durationSeconds: map['durationSeconds'] as int?,
//       resolution: map['resolution'] as String?,
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
//       'durationSeconds': durationSeconds,
//       'resolution': resolution,
//       'isFromArchive': isFromArchive,
//     };
//   }

//   /// Formatted file size
//   String get formattedSize => _formatBytes(size);

//   /// Formatted duration
//   String? get formattedDuration {
//     if (durationSeconds == null) return null;
//     final duration = Duration(seconds: durationSeconds!);
//     final hours = duration.inHours;
//     final minutes = duration.inMinutes.remainder(60);
//     final seconds = duration.inSeconds.remainder(60);

//     if (hours > 0) {
//       return '${hours}h ${minutes}m ${seconds}s';
//     } else if (minutes > 0) {
//       return '${minutes}m ${seconds}s';
//     } else {
//       return '${seconds}s';
//     }
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
//   MovieItem copyWith({
//     String? path,
//     String? name,
//     int? size,
//     DateTime? modifiedDate,
//     String? extension,
//     int? durationSeconds,
//     String? resolution,
//     bool? isFromArchive,
//   }) {
//     return MovieItem(
//       path: path ?? this.path,
//       name: name ?? this.name,
//       size: size ?? this.size,
//       modifiedDate: modifiedDate ?? this.modifiedDate,
//       extension: extension ?? this.extension,
//       durationSeconds: durationSeconds ?? this.durationSeconds,
//       resolution: resolution ?? this.resolution,
//       isFromArchive: isFromArchive ?? this.isFromArchive,
//     );
//   }

//   /// Common video extensions
//   static const videoExtensions = {
//     'mp4', 'avi', 'mkv', 'mov', 'wmv', 'flv', 'webm', 'm4v', 'mpg', 'mpeg', '3gp'
//   };

//   /// Check if extension is a video format
//   static bool isVideoExtension(String ext) {
//     return videoExtensions.contains(ext.toLowerCase());
//   }

//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) return true;
//     return other is MovieItem && other.path == path;
//   }

//   @override
//   int get hashCode => path.hashCode;

//   @override
//   String toString() => 'MovieItem(path: $path, name: $name, size: $formattedSize)';
// }
