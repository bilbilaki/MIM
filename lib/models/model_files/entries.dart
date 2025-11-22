// export 'audio_item.dart';
// export 'image_item.dart';
// export 'folder_item.dart';
// export 'movie_item.dart';
// export 'document_item.dart';

// abstract class Entries {

// }


import '../model_core/fs_entry.dart';
import '../model_core/fs_entry_union.dart';

/// A typed collection/registry model for multiple [FsEntry] items.
class Entries {
      final Map<String, FsEntry> _entries;

  /// Creates an [Entries] collection from a map of entries by ID.
  const Entries(this._entries);

  /// Creates an empty [Entries] collection.
  const Entries.empty() : _entries = const {};

  /// Creates an [Entries] collection from a list of entries.
  Entries.fromList(List<FsEntry> entries)
      : _entries = {for (var entry in entries) entry.id: entry};

  /// Gets an entry by its ID, or returns `null` if not found.
  FsEntry? getById(String id) => _entries[id];

  /// Gets an entry by its path, or returns `null` if not found.
  FsEntry? getByPath(String path) =>
      _entries.values.firstWhere((entry) => entry.path == path, orElse: () => throw StateError('No entry found with path: $path'));

  /// Gets all entries in this collection.
  List<FsEntry> get all => _entries.values.toList();

  /// Gets all entries that are files.
  List<FsEntry> get files =>
      _entries.values.whereType<FsFile>().toList();

  /// Gets all entries that are folders.
  List<FsEntry> get folders =>
      _entries.values.whereType<FsFolder>().toList();

  /// Gets the number of entries in this collection.
  int get length => _entries.length;

  /// Whether this collection contains no entries.
  bool get isEmpty => _entries.isEmpty;

  /// Whether this collection contains at least one entry.
  bool get isNotEmpty => _entries.isNotEmpty;

  /// Gets all children entries for a given folder ID.
  /// Returns an empty list if the folder doesn't exist or has no children.
  List<FsEntry> childrenOf(String folderId) {
        final folder = _entries[folderId];
    if (folder is! FsFolder) return const [];
    
    return folder.data.children
        .map((childRef) => _entries[childRef.id])
        .whereType<FsEntry>()
        .toList();
  }

  /// Gets all entries of a specific [FileKind].
  List<FsEntry> whereKind(FileKind kind) =>
      _entries.values.where((entry) => entry.kind == kind).toList();

  /// Gets all entries that match the given predicate.
  List<FsEntry> where(bool Function(FsEntry) test) =>
      _entries.values.where(test).toList();

  /// Maps each entry to a new value and returns the list of results.
  List<T> map<T>(T Function(FsEntry) convert) =>
      _entries.values.map(convert).toList();

  /// Creates a new [Entries] collection with additional entries.
  Entries addAll(Iterable<FsEntry> newEntries) {
        final updated = Map<String, FsEntry>.from(_entries);
    updated.addAll({for (var entry in newEntries) entry.id: entry});
    return Entries(updated);
  }

  /// Creates a new [Entries] collection with a single entry added.
  Entries add(FsEntry entry) {
        final updated = Map<String, FsEntry>.from(_entries);
    updated[entry.id] = entry;
    return Entries(updated);
  }

  /// Creates a new [Entries] collection with an entry removed.
  Entries remove(String entryId) {
        final updated = Map<String, FsEntry>.from(_entries);
    updated.remove(entryId);
    return Entries(updated);
  }

  /// Creates a new [Entries] collection with multiple entries removed.
  Entries removeAll(Iterable<String> entryIds) {
        final updated = Map<String, FsEntry>.from(_entries);
    for (final id in entryIds) {
          updated.remove(id);
    }
    return Entries(updated);
  }

  /// Whether this collection contains an entry with the given ID.
  bool contains(String entryId) => _entries.containsKey(entryId);

  /// Whether this collection contains an entry with the given path.
  bool containsPath(String path) =>
      _entries.values.any((entry) => entry.path == path);

  @override
  String toString() => 'Entries(count: ${_entries.length})';
}
