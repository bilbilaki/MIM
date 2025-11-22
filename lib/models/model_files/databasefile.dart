
import '../model_core/fs_entry.dart';
import '../model_core/fs_entry_union.dart';
import '../model_core/fs_file_data.dart';
class DatabaseFile {
      final FsFile _file;

  DatabaseFile(FsEntry entry) : _file = entry as FsFile {
    assert(entry.kind == FileKind.database, 
        'The provided file is not of kind database');
  }

  // Delegate getters to the underlying file's base and data

  String get id => _file.base.id;
  String get path => _file.base.path;
  String get name => _file.base.name;
  String? get extension => _file.base.extension;
  int? get sizeBytes => _file.base.sizeBytes;
  EntryStatus get status => _file.base.status;
  EntryAccess? get access => _file.base.access;
  EntryTimestamps? get timestamps => _file.base.timestamps;
  EntryMeta? get meta => _file.base.meta;

  // From FsFileData
  StorageLocation get location => _file.data.location;
  String? get mime => _file.data.mime;
  bool get isContentAvailable => _file.data.isContentAvailable;
  List<FileConversionCapability> get convertibleTo => _file.data.convertibleTo;

  /// Returns database-specific metadata if available.
  /// This extracts metadata from FileTypeMeta.unknown for database files.
  Map<String, dynamic>? get dbMeta {
        final typeMeta = _file.data.typeMeta;
    if (typeMeta is FileTypeMetaUnknown) {
          return typeMeta.data;
    }
    return null;
  }

  /// Convenience getter for database engine type (e.g., 'sqlite', 'realm')
  String? get engine => dbMeta?['engine'] as String?;

  /// Convenience getter for table count if available in metadata
  int? get tableCount => dbMeta?['tableCount'] as int?;

  /// Expose the underlying file and entry for advanced use cases
  FsFile get file => _file;
  FsEntry get entry => _file;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DatabaseFile &&
          runtimeType == other.runtimeType &&
          _file == other._file;

  @override
  int get hashCode => _file.hashCode;

  @override
  String toString() => 'DatabaseFile($_file)';
}