
import '../model_core/fs_entry.dart';
import '../model_core/fs_entry_union.dart';
import '../model_core/fs_file_data.dart';

/// Typed wrapper for Android package (APK) files
class ApkFile {
      final FsFile _file;

  ApkFile(FsEntry entry) : _file = _validateEntry(entry);

  static FsFile _validateEntry(FsEntry entry) {
        assert(
          entry is FsFile && entry.kind == FileKind.apk,
      'ApkFile must wrap a FsFile with kind FileKind.apk',
    );
    return entry as FsFile;
  }

  /// The underlying file entry
  FsFile get entry => _file;

  /// The underlying file data
  FsFileData get data => _file.data;

  // Core identity delegates
  String get id => _file.id;
  String get path => _file.path;
  String get name => _file.name;
  String? get extension => _file.extension;
  int? get sizeBytes => _file.base.sizeBytes;
  FileKind get kind => _file.kind;

  /// MIME type for APK files
  String? get mime => data.mime;

  /// APK-specific metadata from FileTypeMeta
  Map<String, dynamic>? get apkMeta {
        final meta = data.typeMeta;
    return meta is FileTypeMetaUnknown ? meta.data : null;
  }

  /// Package name from metadata
  String? get packageName => apkMeta?['packageName'] as String?;

  /// Version name from metadata
  String? get versionName => apkMeta?['versionName'] as String?;

  /// Version code from metadata
  int? get versionCode => apkMeta?['versionCode'] as int?;

  /// Whether this APK can be extracted (has conversion to folder/archive)
  bool get canExtract {
        return data.convertibleTo.any((capability) =>
        capability.targetKind == FileKind.folder ||
        capability.targetKind == FileKind.archive);
  }

  /// List of conversion capabilities for this APK
  List<FileConversionCapability> get convertibleTo => data.convertibleTo;

  /// Timestamps for this entry
  EntryTimestamps? get timestamps => _file.base.timestamps;

  /// Access permissions for this entry
  EntryAccess? get access => _file.base.access;

  /// Custom metadata for this entry
  EntryMeta? get meta => _file.base.meta;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ApkFile && runtimeType == other.runtimeType && id == other.id;

  @override
  int get hashCode => id.hashCode;

  @override
  String toString() => 'ApkFile($name, $path)';
}
