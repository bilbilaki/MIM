import '../model_core/fs_entry.dart';
import '../model_core/fs_entry_union.dart';


/// Typed view for entries marked as deleted/in trash.
/// Wraps any FsEntry with status == EntryStatus.deleted.
class DeletedFile {
      final FsEntry _entry;

  DeletedFile(this._entry) {
        assert(
          _entry.base.status == EntryStatus.deleted,
      'DeletedFile can only wrap entries with EntryStatus.deleted',
    );
  }

  /// Get the underlying entry
  FsEntry get entry => _entry;

  // Common identity delegates
  String get id => _entry.base.id;
  String get path => _entry.base.path;
  String get name => _entry.base.name;
  FileKind get kind => _entry.base.kind;
  String? get extension => _entry.base.extension;
  int? get sizeBytes => _entry.base.sizeBytes;
  EntryStatus get status => _entry.base.status;

  /// Original path/name before deletion (stored in metadata)
  String? get originalPath => _entry.base.meta?.custom['original_path'] as String?;
  String? get originalName => _entry.base.meta?.custom['original_name'] as String?;

  /// Timestamps related to deletion
  DateTime? get deletedAt => _entry.base.timestamps?.updatedAt;

  /// Access the underlying file if this is a deleted file
  FsFile? get asFile => _entry is FsFile ? _entry : null;

  /// Access the underlying folder if this is a deleted folder  
  FsFolder? get asFolder => _entry is FsFolder ? _entry : null;

  /// Whether this represents a deleted file
  bool get isFile => _entry is FsFile;

  /// Whether this represents a deleted folder
  bool get isFolder => _entry is FsFolder;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DeletedFile &&
          runtimeType == other.runtimeType &&
          _entry == other._entry;

  @override
  int get hashCode => _entry.hashCode;

  @override
  String toString() => 'DeletedFile($_entry)';
}
