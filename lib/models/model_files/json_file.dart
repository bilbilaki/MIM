import '../model_core/fs_entry.dart';
import '../model_core/fs_entry_union.dart';
import '../model_core/fs_file_data.dart';

class JsonFile {
      final FsFile _file;

  JsonFile(FsEntry entry) : _file = _validateEntry(entry);

  /// Validate that the entry is a JSON file
  static FsFile _validateEntry(FsEntry entry) {
        assert(entry is FsFile, 'JsonFile must wrap a file entry');
    assert(entry.kind == FileKind.json, 
        'JsonFile must have kind FileKind.json, but got ${entry.kind}');
    
    final file = entry as FsFile;
    return file;
  }

  /// Core identity delegates
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

  /// File-specific properties
  String? get mime => _file.data.mime;
  StorageLocation get location => _file.data.location;
  bool get isContentAvailable => _file.data.isContentAvailable;

  /// Access the underlying entry for generic operations
  FsEntry get entry => _file;
  FsFile get file => _file;
  FsFileData get data => _file.data;

  /// JSON-specific metadata (currently uses FileTypeMeta.unknown or could be null)
  Map<String, dynamic>? get jsonMetadata {
        final typeMeta = _file.data.typeMeta;
    if (typeMeta is FileTypeMetaUnknown) {
          return typeMeta.data;
    }
    return null;
  }

  /// Conversion capabilities inspection
  List<FileConversionCapability> get convertibleTo => _file.data.convertibleTo;

  /// Helper to check if JSON can be converted to CSV
  bool get canConvertToCsv => convertibleTo.any((capability) =>
      capability.targetKind == FileKind.csv);

  /// Helper to check if JSON can be converted to document formats
  bool get canConvertToDocument => convertibleTo.any((capability) =>
      capability.targetKind == FileKind.document);

  /// Helper to check if JSON can be converted to other formats
  bool canConvertTo(FileKind targetKind) => convertibleTo
      .any((capability) => capability.targetKind == targetKind);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is JsonFile &&
          runtimeType == other.runtimeType &&
          _file == other._file;

  @override
  int get hashCode => _file.hashCode;

  @override
  String toString() => 'JsonFile($_file)';
}