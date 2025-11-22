import '../model_core/fs_entry.dart';
import '../model_core/fs_entry_union.dart';
import '../model_core/fs_file_data.dart';


/// Typed wrapper for Android Package (APK) files
class ApkFile {
      final FsFile _file;

  ApkFile(FsEntry entry) : _file = _validateEntry(entry);

  static FsFile _validateEntry(FsEntry entry) {
        assert(entry is FsFile, 'APK file must be a file, not a folder');
    assert(entry.kind == FileKind.apk, 'APK file must have kind apk');
    return entry as FsFile;
  }

  /// The underlying filesystem entry
  FsEntry get entry => _file;
  
  /// The underlying file data
  FsFile get file => _file;

  // Core identity
  String get id => _file.base.id;
  String get path => _file.base.path;
  String get name => _file.base.name;
  String? get extension => _file.base.extension;
  int? get sizeBytes => _file.base.sizeBytes;
  FileKind get kind => _file.base.kind;

  // File-specific properties
  String? get mime => _file.data.mime;
  
  /// APK-specific metadata from typeMeta
  Map<String, dynamic>? get apkMeta {
        final meta = _file.data.typeMeta;
    return meta is FileTypeMetaUnknown ? meta.data : null;
  }

  /// Whether this APK can be extracted (conversion to folder/archive)
  bool get canExtract {
        return _file.data.convertibleTo.any((capability) =>
        capability.targetKind == FileKind.folder ||
        capability.targetKind == FileKind.archive);
  }

  /// Package name from metadata, if available
  String? get packageName => apkMeta?['packageName'] as String?;

  /// Version from metadata, if available  
  String? get version => apkMeta?['version'] as String?;

  /// Version code from metadata, if available
  int? get versionCode => apkMeta?['versionCode'] as int?;
}