
import '../model_core/fs_entry.dart';
import '../model_core/fs_entry_union.dart';
import '../model_core/fs_file_data.dart';

/// Typed view for disc image (ISO/IMG) files.
class ImgIsoFile {
      final FsFile _file;

  ImgIsoFile(FsEntry entry) : _file = _validateEntry(entry);

  static FsFile _validateEntry(FsEntry entry) {
        assert(entry is FsFile, 'ImgIsoFile must wrap a file entry');
    assert(entry.kind == FileKind.iso, 'ImgIsoFile must have kind FileKind.iso');
    return entry as FsFile;
  }

  /// The underlying filesystem entry
  FsEntry get entry => _file;

  /// The underlying file entry
  FsFile get file => _file;

  /// Core identity properties
  String get id => _file.base.id;
  String get path => _file.base.path;
  String get name => _file.base.name;
  String? get extension => _file.base.extension;
  int? get sizeBytes => _file.base.sizeBytes;
  FileKind get kind => _file.base.kind;

  /// File-specific data
  FsFileData get data => _file.data;
  String? get mime => _file.data.mime;

  /// ISO-specific metadata if available
  Map<String, dynamic>? get isoMeta {
        final typeMeta = _file.data.typeMeta;
    return typeMeta is FileTypeMetaUnknown ? typeMeta.data : null;
  }

  /// Volume label from metadata (if stored)
  String? get volumeLabel => isoMeta?['volumeLabel'] as String?;

  /// File system type from metadata (if stored)
  String? get fileSystemType => isoMeta?['fileSystemType'] as String?;

  /// Whether this ISO can be mounted/extracted
  bool get canExtract => _file.data.convertibleTo.any(
            (capability) => capability.targetKind == FileKind.folder,
      );

  /// Whether this ISO can be converted to other formats
  bool get canConvert => _file.data.convertibleTo.isNotEmpty;

  /// List of available conversion targets
  List<FileConversionCapability> get conversionCapabilities =>
      _file.data.convertibleTo;
}