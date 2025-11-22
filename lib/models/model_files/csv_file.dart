
import '../model_core/fs_entry.dart';
import '../model_core/fs_entry_union.dart';
import '../model_core/fs_file_data.dart';

/// Typed wrapper for CSV files
class CsvFile {
      final FsFile _file;

  CsvFile(FsEntry entry) : _file = _validateEntry(entry);

  static FsFile _validateEntry(FsEntry entry) {
        assert(entry is FsFile, 'CsvFile can only wrap file entries');
    assert(entry.kind == FileKind.csv, 'Entry must be a CSV file');
    return entry as FsFile;
  }

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

  // File-specific delegates
  FsFileData get data => _file.data;
  StorageLocation get location => _file.data.location;
  String? get mime => _file.data.mime;
  bool get isContentAvailable => _file.data.isContentAvailable;
  List<FileConversionCapability> get convertibleTo => _file.data.convertibleTo;

  /// Underlying file entry
  FsFile get file => _file;

  /// Underlying filesystem entry
  FsEntry get entry => _file;

  // CSV-specific metadata access
  /// CSV delimiter if stored in metadata (e.g., in meta.custom['delimiter'])
  String? get delimiter => _file.base.meta?.custom['delimiter'] as String?;

  /// Whether CSV has header row if stored in metadata
  bool get hasHeader => _file.base.meta?.custom['hasHeader'] as bool? ?? false;

  /// Quote character if stored in metadata
  String? get quoteChar => _file.base.meta?.custom['quoteChar'] as String?;

  // Conversion capabilities inspection
  /// Whether this CSV can be converted to JSON
  bool get canConvertToJson => convertibleTo.any(
            (capability) => capability.targetKind == FileKind.json,
      );

  /// Whether this CSV can be converted to document formats
  bool get canConvertToDocument => convertibleTo.any(
            (capability) => capability.targetKind == FileKind.document,
      );

  /// Whether this CSV can be converted to other formats
  bool get canConvertToMarkdown => convertibleTo.any(
            (capability) => capability.targetKind == FileKind.markdown,
      );

  /// Gets conversion capabilities for a specific target kind
  List<FileConversionCapability> getConversionsTo(FileKind targetKind) =>
      convertibleTo.where((c) => c.targetKind == targetKind).toList();
}