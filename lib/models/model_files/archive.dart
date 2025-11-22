
import '../model_core/fs_entry.dart';
import '../model_core/fs_entry_union.dart';
import '../model_core/fs_file_data.dart';


/// Typed wrapper for archive files (zip, tar, etc.)
class ArchiveFile {
      final FsFile _file;

  ArchiveFile(FsEntry entry) : _file = _validateEntry(entry);

  static FsFile _validateEntry(FsEntry entry) {
        assert(entry is FsFile, 'ArchiveFile must wrap a file entry');
    assert(entry.kind == FileKind.archive, 
        'ArchiveFile must have kind FileKind.archive, but got ${entry.kind}');
    return entry as FsFile;
  }

  /// Core identity delegates
  String get id => _file.base.id;
  String get path => _file.base.path;
  String get name => _file.base.name;
  String? get extension => _file.base.extension;
  int? get sizeBytes => _file.base.sizeBytes;
  FileKind get kind => _file.base.kind;

  /// File-specific data
  FsFileData get data => _file.data;
  String? get mime => _file.data.mime;

  /// Archive type via extension (e.g., \"zip\", \"tar\", \"7z\")
  String get archiveType => extension ?? 'unknown';

  /// MIME type if known (e.g. application/zip)
  String? get mimeType => mime;

  /// Conversion capabilities inspection
  bool get canExtract => _file.data.convertibleTo
      .any((capability) => capability.targetKind == FileKind.folder);

  bool get canRepack => _file.data.convertibleTo
      .any((capability) => capability.targetKind == FileKind.archive);

  List<FileConversionCapability> get supportedConversions => 
      _file.data.convertibleTo;

  /// Access to underlying entry for generic operations
  FsEntry get entry => _file;
  FsFile get file => _file;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ArchiveFile && runtimeType == other.runtimeType && id == other.id;

  @override
  int get hashCode => id.hashCode;

  @override
  String toString() => 'ArchiveFile($path)';}