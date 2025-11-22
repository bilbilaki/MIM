
import '../model_core/fs_entry.dart';
import '../model_core/fs_entry_union.dart';
import '../model_core/fs_file_data.dart';

/// Typed wrapper for symbolic links, shortcuts, or file references.
class LinkedFile {
      final FsEntry _entry;

  LinkedFile(FsEntry entry) : _entry = entry {
        assert(entry is FsFile, 'LinkedFile must wrap a FsFile');
    assert(entry.kind == FileKind.link, 
        'The entry must be of kind link, but got ${entry.kind}');
  }

  /// Get the underlying file entry
  FsFile get _file => _entry as FsFile;

  /// Get the underlying entry for interoperability
  FsEntry get entry => _entry;

  // Core identity delegates
  String get id => _entry.base.id;
  String get path => _entry.base.path;
  String get name => _entry.base.name;
  String? get extension => _entry.base.extension;
  FileKind get kind => _entry.base.kind;
  int? get sizeBytes => _entry.base.sizeBytes;
  EntryStatus get status => _entry.base.status;

  /// Get the target entry ID if this link references another entry by ID
  String? get targetEntryId {
        final meta = _file.data.typeMeta;
    if (meta is FileTypeMetaUnknown) {
          return meta.data['targetEntryId'] as String?;
    }
    return null;
  }

  /// Get the target path if this link references a filesystem path
  String? get targetPath {
        final meta = _file.data.typeMeta;
    if (meta is FileTypeMetaUnknown) {
          return meta.data['targetPath'] as String?;
    }
    return null;
  }

  /// Get the link type (symbolic, shortcut, reference, etc.)
  String? get linkType {
        final meta = _file.data.typeMeta;
    if (meta is FileTypeMetaUnknown) {
          return meta.data['linkType'] as String?;
    }
    return null;
  }

  /// Check if this link is broken (target doesn't exist)
  bool get isBroken {
        final meta = _file.data.typeMeta;
    if (meta is FileTypeMetaUnknown) {
          return meta.data['isBroken'] as bool? ?? false;
    }
    return false;
  }

  /// Get the file data for this link
  FsFileData get data => _file.data;

  /// Get the mime type if available
  String? get mime => _file.data.mime;

  /// Get the storage location of this link file
  StorageLocation get location => _file.data.location;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LinkedFile && runtimeType == other.runtimeType && id == other.id;

  @override
  int get hashCode => id.hashCode;

  @override
  String toString() => 'LinkedFile($path -> ${targetPath ?? targetEntryId})';
}