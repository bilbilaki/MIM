import '../model_core/fs_entry.dart';
import '../model_core/fs_entry_union.dart';
import '../model_core/fs_file_data.dart';

/// Typed view for Python source script files.
class PythonFile {
      final FsFile _file;

  PythonFile(FsEntry entry) : _file = _validateEntry(entry);

  static FsFile _validateEntry(FsEntry entry) {
        assert(entry is FsFile, 'PythonFile must wrap a file entry');
    assert(
          entry.kind == FileKind.script || entry.kind == FileKind.code,
      'PythonFile must be of kind script or code',
    );
    assert(
          entry.extension == 'py',
      'PythonFile must have .py extension',
    );
    return entry as FsFile;
  }

  /// The underlying filesystem entry
  FsEntry get entry => _file;

  /// The underlying file data
  FsFile get file => _file;

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

  // File-specific data
  StorageLocation get location => _file.data.location;
  String? get mime => _file.data.mime;
  bool get isContentAvailable => _file.data.isContentAvailable;
  List<FileConversionCapability> get convertibleTo => _file.data.convertibleTo;

  /// Whether this Python script is marked as executable
  bool get isExecutable => _file.base.access?.executable == true;

  /// Language-specific metadata from custom metadata
  Map<String, dynamic>? get pythonMetadata => _file.base.meta?.custom['python'];

  /// Whether this script has an entry point (main function)
  bool get hasEntryPoint => pythonMetadata?['has_entry_point'] == true;

  /// Dependencies/modules referenced in metadata
  List<String> get dependencies => 
      List<String>.from(pythonMetadata?['dependencies'] ?? []);

  /// Check if this Python file can be converted to a specific format
  bool canConvertTo(FileKind targetKind, [String? targetExtension]) {
        for (final capability in convertibleTo) {
          if (capability.targetKind == targetKind) {
            if (targetExtension == null) {
              return true;
        }
        if (capability.targetExtensions.contains(targetExtension)) {
              return true;
        }
      }
    }
    return false;
  }

  /// Check if this can be converted to an executable
  bool get canConvertToExecutable => canConvertTo(FileKind.binary);

  /// Check if this can be converted to documentation
  bool get canConvertToDocumentation => canConvertTo(FileKind.markdown) || 
                                       canConvertTo(FileKind.document);
}
