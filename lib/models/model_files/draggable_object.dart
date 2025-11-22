import 'package:freezed_annotation/freezed_annotation.dart';

import '../model_core/fs_entry.dart';
import '../model_core/fs_entry_union.dart';

part 'draggable_object.freezed.dart';
part 'draggable_object.g.dart';

/// Represents a draggable filesystem item that can wrap single or multiple entries.
/// This is a pure data model for drag-and-drop operations, not UI implementation.
@freezed
class DraggableObject with _$DraggableObject {
      const DraggableObject._();

  /// Single entry draggable object
  const factory DraggableObject.single({
        required FsEntry entry,
  }) = DraggableSingle;

  /// Multiple entries draggable object
  const factory DraggableObject.multiple({
        required List<FsEntry> entries,
  }) = DraggableMultiple;

  factory DraggableObject.fromJson(Map<String, dynamic> json) =>
      _$DraggableObjectFromJson(json);

  /// Convenience getters

  /// Returns all entries in this draggable object
  List<FsEntry> get allEntries => when(
            single: (entry) => [entry],
        multiple: (entries) => entries,
      );

  /// Returns the primary/representative entry (first entry for multiple)
  FsEntry get primaryEntry => when(
            single: (entry) => entry,
        multiple: (entries) => entries.first,
      );

  /// Returns the number of entries being dragged
  int get count => when(
            single: (_) => 1,
        multiple: (entries) => entries.length,
      );

  /// Returns true if this contains only a single entry
  bool get isSingle => when(
            single: (_) => true,
        multiple: (_) => false,
      );

  /// Returns true if this contains multiple entries
  bool get isMultiple => when(
            single: (_) => false,
        multiple: (_) => true,
      );

  /// Returns a list of all entry IDs
  List<String> get entryIds => allEntries.map((e) => e.id).toList();

  /// Returns a list of all entry paths
  List<String> get entryPaths => allEntries.map((e) => e.path).toList();

  /// Returns true if all entries are files
  bool get allFiles => allEntries.every((e) => e is FsFile);

  /// Returns true if all entries are folders
  bool get allFolders => allEntries.every((e) => e is FsFolder);

  /// Returns true if this contains a mix of files and folders
  bool get mixedTypes => !allFiles && !allFolders;

  /// Filters entries by file kind
  List<FsEntry> entriesOfKind(FileKind kind) =>
      allEntries.where((e) => e.kind == kind).toList();

  /// Returns the first entry of specified kind, if any
  FsEntry? firstOfKind(FileKind kind) =>
      allEntries.firstWhere((e) => e.kind == kind, orElse: () => throw StateError('No entry of kind $kind'));
}