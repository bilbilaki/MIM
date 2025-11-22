
import '../model_core/fs_entry.dart';
import '../model_core/fs_entry_union.dart';
import '../model_core/fs_file_data.dart';
/// Typed view for files with unknown/unsupported file types.
/// 
/// This wrapper handles files that don't match any specific known type
/// but still need to be represented in the filesystem.
class UnknownFile {
      final FsFile _file;

  UnknownFile(FsEntry entry) : _file = _validateEntry(entry);

  /// Validate that the entry is a file with unknown kind
  static FsFile _validateEntry(FsEntry entry) {
        assert(entry is FsFile, 'UnknownFile can only wrap file entries');
    assert(entry.kind == FileKind.unknown, 
        'UnknownFile can only wrap entries with FileKind.unknown');
    
    return entry as FsFile;
  }

  /// Core identity properties delegated to the underlying entry
  String get id => _file.base.id;
  String get path => _file.base.path;
  String get name => _file.base.name;
  String? get extension => _file.base.extension;
  int? get sizeBytes => _file.base.sizeBytes;
  FileKind get kind => _file.base.kind;

  /// File-specific properties
  FsFileData get data => _file.data;
  StorageLocation get location => _file.data.location;
  String? get mime => _file.data.mime;
  
  /// Access to the raw unknown metadata if available
  Map<String, dynamic>? get unknownMeta {
        final typeMeta = _file.data.typeMeta;
    return typeMeta is FileTypeMetaUnknown ? typeMeta.data : null;
  }

  /// Check if this unknown file can be converted to a known type
  bool get canConvertToKnownType => _file.data.convertibleTo.isNotEmpty;

  /// Get available conversion targets for this unknown file
  List<FileConversionCapability> get conversionTargets => 
      _file.data.convertibleTo;

  /// Check if specific conversion is supported
  bool canConvertTo(FileKind targetKind, [String? targetExtension]) {
        return _file.data.convertibleTo.any((capability) {
          final kindMatches = capability.targetKind == targetKind;
      final extensionMatches = targetExtension == null || 
          capability.targetExtensions.contains(targetExtension);
      return kindMatches && extensionMatches;
    });
  }

  /// Access to the underlying file entry
  FsFile get file => _file;

  /// Access to the full entry (for interoperability)
  FsEntry get entry => _file;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UnknownFile &&
          runtimeType == other.runtimeType &&
          _file == other._file;

  @override
  int get hashCode => _file.hashCode;

  @override
  String toString() => 'UnknownFile($name, path: $path, size: $sizeBytes)';
}