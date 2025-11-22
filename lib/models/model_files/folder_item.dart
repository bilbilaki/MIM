
import '../model_core/fs_entry.dart';
import '../model_core/fs_entry_union.dart';
import '../model_core/fs_folder_children.dart';

class FolderItem {
      final FsEntry _entry;

  FolderItem(FsEntry entry)
      : _entry = entry,
        assert(entry is FsFolder, 'FolderItem must wrap a FsFolder'),
        assert(entry.kind == FileKind.folder, 'FolderItem must have folder kind');

  /// Get the underlying entry
  FsEntry get entry => _entry;

  /// Get the typed folder view
  FsFolder get folder => _entry as FsFolder;

  // Common identity getters
  String get id => folder.base.id;
  String get path => folder.base.path;
  String get name => folder.base.name;
  FileKind get kind => folder.base.kind;
  String? get extension => folder.base.extension;
  int? get sizeBytes => folder.base.sizeBytes;
  EntryStatus get status => folder.base.status;
  EntryAccess? get access => folder.base.access;
  EntryTimestamps? get timestamps => folder.base.timestamps;
  EntryMeta? get meta => folder.base.meta;

  // Folder-specific data
  List<FolderChildRef> get children => folder.data.children;
  bool get isPartial => folder.data.isPartial;

  /// Check if folder has no children
  bool get isEmpty => children.isEmpty;

  /// Get only child folders
  List<FolderChildRef> get childFolders => 
      children.where((child) => child.isFolder).toList();

  /// Get only child files
  List<FolderChildRef> get childFiles => 
      children.where((child) => !child.isFolder).toList();

  /// Get children of specific kind (requires additional filtering logic)
  List<FolderChildRef> childrenByKind(FileKind kind) {
        // Note: This would require additional metadata about child kinds
    // Currently FolderChildRef only has id, name, and isFolder
    // You might need to extend FolderChildRef to include kind for this to work
    return children;
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FolderItem && runtimeType == other.runtimeType && id == other.id;

  @override
  int get hashCode => id.hashCode;

  @override
  String toString() => 'FolderItem($path)';
}
