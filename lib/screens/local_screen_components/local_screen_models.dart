import 'dart:io';
import 'package:path/path.dart' as p;
import '../../models/model_core/fs_entry_union.dart';

// Enums for managing UI states
enum ViewMode { grid, list }

enum SortMode { name, date, type }

// A helper class to unify File and Directory for sorting and display purposes
class GridItem {
  final FileSystemEntity? entity;
  final FsEntry? fsEntry;

  // Constructor for legacy File/Directory
  GridItem(this.entity) : fsEntry = null;

  // Constructor for new FsEntry domain model
  GridItem.fromFsEntry(this.fsEntry) : entity = null;

  bool get isFolder => 
    entity is Directory || (fsEntry != null && fsEntry!.isFolder);
  
  // Get just the base name (file or folder name)
  String get name {
    if (entity != null) {
      return p.basename(entity!.path);
    }
    return fsEntry?.name ?? 'Unknown';
  }

  // Get the path
  String get path {
    if (entity != null) {
      return entity!.path;
    }
    return fsEntry?.path ?? '';
  }

  // Get the FileSystemEntity (for backward compatibility)
  FileSystemEntity? get fileSystemEntity => entity;

  // Check if this is a new-style FsEntry or old-style File/Directory
  bool get isLegacy => entity != null;
  bool get isDomainModel => fsEntry != null;
}
