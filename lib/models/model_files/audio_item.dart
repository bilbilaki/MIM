
import '../model_core/fs_entry.dart';
import '../model_core/fs_entry_union.dart';
import '../model_core/fs_file_data.dart';


/// Typed wrapper for audio files that provides convenient, type-safe accessors.
class AudioItem {
      final FsEntry _entry;

  AudioItem(FsEntry entry) : _entry = entry {
        assert(
          entry is FsFile && entry.kind == FileKind.audio,
      'AudioItem must wrap an audio file entry',
    );
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
  FileKind get kind => file.base.kind;
  int? get sizeBytes => file.base.sizeBytes;
  EntryStatus get status => file.base.status;
  EntryAccess? get access => file.base.access;
  EntryTimestamps? get timestamps => file.base.timestamps;
  EntryMeta? get meta => file.base.meta;

  // File data delegates
  StorageLocation get location => file.data.location;
  String? get mime => file.data.mime;
  List<FileConversionCapability> get convertibleTo => file.data.convertibleTo;
  bool get isContentAvailable => file.data.isContentAvailable;

  /// Get typed audio metadata from FileTypeMeta
  AudioMeta? get audioMeta {
        final typeMeta = file.data.typeMeta;
    return typeMeta is FileTypeMetaAudio ? typeMeta.audio : null;
  }

  // Convenience getters for audio-specific properties
  double? get durationSeconds => audioMeta?.durationSeconds;
  int? get bitrateKbps => audioMeta?.bitrateKbps;
  int? get sampleRateHz => audioMeta?.sampleRateHz;
  int? get channels => audioMeta?.channels;

  /// Check if this audio file can be converted to the specified target kind
  bool canConvertTo(FileKind targetKind) {
        return convertibleTo.any((capability) => capability.targetKind == targetKind);
  }

  /// Get conversion capabilities for a specific target kind
  List<FileConversionCapability> getConversionCapabilities(FileKind targetKind) {
        return convertibleTo
        .where((capability) => capability.targetKind == targetKind)
        .toList();
  }

  /// Check if this audio file can be converted to any other format
  bool get canConvert => convertibleTo.isNotEmpty;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AudioItem &&
          runtimeType == other.runtimeType &&
          _entry == other._entry;

  @override
  int get hashCode => _entry.hashCode;

  @override
  String toString() => 'AudioItem(${file.base.name})';
}

// import 'dart:io';

// import 'entries.dart';

// /// Represents an audio file
// class AudioItem extends Entries {
//   final String path;
//   final String name;
//   final int size;
//   final DateTime? modifiedDate;
//   final String extension;
//   final int? durationSeconds; // Audio duration if available
//   final String? artist;
//   final String? album;
//   final String? title;
//   final bool isFromArchive;

//   AudioItem({
//     required this.path,
//     required this.name,
//     required this.size,
//     this.modifiedDate,
//     required this.extension,
//     this.durationSeconds,
//     this.artist,
//     this.album,
//     this.title,
//     this.isFromArchive = false,
//   });

//   /// Create from FileSystemEntity
//   factory AudioItem.fromFileSystem(File file, FileStat stat) {
//     final path = file.path;
//     final name = path.split('/').last;
//     final extension = name.split('.').last.toLowerCase();

//     return AudioItem(
//       path: path,
//       name: name,
//       size: stat.size,
//       modifiedDate: stat.modified,
//       extension: extension,
//       isFromArchive: false,
//     );
//   }

//   /// Create from ZipEntryInfo
//   factory AudioItem.fromZipEntry(dynamic zipEntry) {
//     final path = zipEntry.path as String;
//     final name = path.split('/').last;
//     final extension = name.split('.').last.toLowerCase();

//     return AudioItem(
//       path: path,
//       name: name,
//       size: zipEntry.originalSize as int,
//       modifiedDate: zipEntry.modifiedDateTime as DateTime?,
//       extension: extension,
//       isFromArchive: true,
//     );
//   }

//   /// Create from Map
//   factory AudioItem.fromMap(Map<String, dynamic> map) {
//     return AudioItem(
//       path: map['path'] as String,
//       name: map['name'] as String,
//       size: map['size'] as int,
//       modifiedDate: map['modifiedDate'] != null
//           ? DateTime.fromMillisecondsSinceEpoch(map['modifiedDate'] as int)
//           : null,
//       extension: map['extension'] as String,
//       durationSeconds: map['durationSeconds'] as int?,
//       artist: map['artist'] as String?,
//       album: map['album'] as String?,
//       title: map['title'] as String?,
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
//       'artist': artist,
//       'album': album,
//       'title': title,
//       'isFromArchive': isFromArchive,
//     };
//   }

//   /// Formatted file size
//   String get formattedSize => _formatBytes(size);

//   /// Formatted duration
//   String? get formattedDuration {
//     if (durationSeconds == null) return null;
//     final duration = Duration(seconds: durationSeconds!);
//     final minutes = duration.inMinutes;
//     final seconds = duration.inSeconds.remainder(60);

//     return '${minutes}:${seconds.toString().padLeft(2, '0')}';
//   }

//   /// Display title (uses metadata title if available, otherwise filename)
//   String get displayTitle => title ?? name;

//   String _formatBytes(int bytes) {
//     if (bytes < 1024) return '$bytes B';
//     if (bytes < 1024 * 1024) return '${(bytes / 1024).toStringAsFixed(1)} KB';
//     if (bytes < 1024 * 1024 * 1024) {
//       return '${(bytes / (1024 * 1024)).toStringAsFixed(1)} MB';
//     }
//     return '${(bytes / (1024 * 1024 * 1024)).toStringAsFixed(1)} GB';
//   }

//   /// Copy with modifications
//   AudioItem copyWith({
//     String? path,
//     String? name,
//     int? size,
//     DateTime? modifiedDate,
//     String? extension,
//     int? durationSeconds,
//     String? artist,
//     String? album,
//     String? title,
//     bool? isFromArchive,
//   }) {
//     return AudioItem(
//       path: path ?? this.path,
//       name: name ?? this.name,
//       size: size ?? this.size,
//       modifiedDate: modifiedDate ?? this.modifiedDate,
//       extension: extension ?? this.extension,
//       durationSeconds: durationSeconds ?? this.durationSeconds,
//       artist: artist ?? this.artist,
//       album: album ?? this.album,
//       title: title ?? this.title,
//       isFromArchive: isFromArchive ?? this.isFromArchive,
//     );
//   }

//   /// Common audio extensions
//   static const audioExtensions = {
//     'mp3', 'wav', 'flac', 'aac', 'ogg', 'wma', 'm4a', 'opus', 'ape', 'alac'
//   };

//   /// Check if extension is an audio format
//   static bool isAudioExtension(String ext) {
//     return audioExtensions.contains(ext.toLowerCase());
//   }

//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) return true;
//     return other is AudioItem && other.path == path;
//   }

//   @override
//   int get hashCode => path.hashCode;

//   @override
//   String toString() => 'AudioItem(path: $path, name: $name, size: $formattedSize)';
// }
