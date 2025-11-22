import 'package:freezed_annotation/freezed_annotation.dart';

import '../../model_core/fs_entry.dart';
import '../../model_core/fs_entry_union.dart';
import '../../model_core/fs_folder_children.dart';


part 'create_folder.freezed.dart';
part 'create_folder.g.dart';

/// Task for creating a new folder in the filesystem
@freezed
class CreateFolderTask with _$CreateFolderTask {
  const CreateFolderTask._();

  const factory CreateFolderTask({
    /// ID of the parent folder where the new folder will be created
    required String parentFolderId,

    /// Name of the new folder to create
    required String name,

    /// Optional initial metadata for the new folder
    EntryMeta? meta,

    /// Optional access permissions for the new folder
    EntryAccess? access,

    /// Optional timestamps for the new folder
    EntryTimestamps? timestamps,
  }) = _CreateFolderTask;

  factory CreateFolderTask.fromJson(Map<String, dynamic> json) =>
      _$CreateFolderTaskFromJson(json);

  /// Executes the folder creation task
  ///
  /// [fs] - The filesystem repository for performing operations
  /// [cancel] - Optional cancellation token
  Future<CreateFolderResult> run(
    FsRepository fs, {
    CancellationToken? cancel,
  }) async {
    // Validate inputs
    if (name.isEmpty) {
      throw ArgumentError('Folder name cannot be empty');
    }

    if (name.contains('/') || name.contains('\\')) {
      throw ArgumentError('Folder name cannot contain path separators');
    }

    // Get parent folder
    final parent = await fs.getEntry(parentFolderId);
    if (parent == null) {
      throw StateError('Parent folder with id $parentFolderId not found');
    }

    if (parent is! FsFolder) {
      throw StateError('Parent entry with id $parentFolderId is not a folder');
    }

    // Check for naming conflicts
    final existingChild = parent.data.children
        .where((child) => child.name == name && child.isFolder)
        .firstOrNull;

    if (existingChild != null) {
      throw StateError('A folder named "$name" already exists in the parent folder');
    }

    // Create folder base
    final folderBase = FsEntryBase.create(
      path: '${parent.path}/$name',
      name: name,
      kind: FileKind.folder,
      extension: null,
      sizeBytes: 0,
      access: access,
      timestamps: timestamps ?? EntryTimestamps(createdAt: DateTime.now()),
      meta: meta,
    );

    // Create folder data
    final folderData = FsFolderData(
      children: const [],
      isPartial: false,
    );

    // Create the folder entry
    final newFolder = FsEntry.folder(
      base: folderBase,
      data: folderData,
    );

    // Save to repository
    final createdFolder = await fs.createEntry(newFolder, parentId: parentFolderId);

    if (createdFolder is! FsFolder) {
      throw StateError('Created entry is not a folder');
    }

    return CreateFolderResult(
      folder: createdFolder,
      success: true,
    );
  }
}

/// Abstract filesystem repository interface for dependency injection
abstract class FsRepository {
Future<FsEntry?> getEntry(String id);
Future<FsEntry> createEntry(FsEntry entry, {required String parentId});
}

/// Simple cancellation token for async operations
class CancellationToken {
bool _cancelled = false;

bool get isCancelled => _cancelled;

void cancel() {
_cancelled = true;
}

void throwIfCancelled() {
if (_cancelled) {
throw Exception('Operation cancelled');
}
}
}
@freezed
class CreateFolderResult with _$CreateFolderResult {
  const factory CreateFolderResult({
    /// The newly created folder entry
    required FsFolder folder,

    /// Whether the folder was successfully created
    required bool success,

    /// Error message if creation failed, null if successful
    String? error,
  }) = _CreateFolderResult;

  factory CreateFolderResult.fromJson(Map<String, dynamic> json) =>
      _$CreateFolderResultFromJson(json);
}
