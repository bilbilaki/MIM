import 'package:freezed_annotation/freezed_annotation.dart';

import '../../model_core/fs_entry.dart';
import '../../model_core/fs_entry_union.dart';
import '../../model_core/fs_file_data.dart';


part 'create_file.freezed.dart';
part 'create_file.g.dart';

/// Task for creating a new file entry in the filesystem.
@freezed
class CreateFileTask with _$CreateFileTask {
const CreateFileTask._();

const factory CreateFileTask({
/// ID of the target folder where the file will be created
required String targetFolderId,

/// Name of the new file (including extension if applicable)
required String name,

/// Kind of file to create
required FileKind kind,

/// Optional file extension (without dot)
String? extension,

/// Optional initial content source
/// Could be a template identifier, empty content marker, or source file ID to copy from
String? initialContentSource,

/// Optional file size in bytes (if known in advance)
int? sizeBytes,

/// Optional access permissions for the new file
EntryAccess? access,

/// Optional timestamps for the new file
EntryTimestamps? timestamps,

/// Optional metadata for the new file
EntryMeta? meta,

/// Optional file type specific metadata
FileTypeMeta? typeMeta,

/// Optional storage location configuration
StorageLocation? storageLocation,

/// Optional MIME type
String? mime,

/// Conflict resolution policy when a file with the same name already exists
@Default(CreateFileConflictPolicy.rename) CreateFileConflictPolicy conflictPolicy,
}) = _CreateFileTask;

factory CreateFileTask.fromJson(Map<String, dynamic> json) => _$CreateFileTaskFromJson(json);
}

/// Conflict resolution policies for file creation
enum CreateFileConflictPolicy {
/// Rename the new file with a suffix (e.g., "file (1).txt")
rename,

/// Overwrite the existing file
overwrite,

/// Fail the operation if file exists
fail,

/// Skip creation if file exists
skip,
}

/// Result of file creation operation
@freezed
class CreateFileResult with _$CreateFileResult {
const factory CreateFileResult({
/// The newly created file entry
required FsFile file,

/// Whether the file was actually created or skipped due to conflict policy
required bool wasCreated,

/// If file was renamed due to conflict, this contains the original requested name
String? originalRequestedName,

/// Any warnings or additional information about the creation process
@Default([]) List<String> warnings,
}) = _CreateFileResult;

factory CreateFileResult.fromJson(Map<String, dynamic> json) => _$CreateFileResultFromJson(json);
}

/// Extension with execution method for CreateFileTask
extension CreateFileTaskExecutor on CreateFileTask {
/// Executes the file creation task
///
/// [fs] - Filesystem repository for performing operations
/// [cancel] - Optional cancellation token
Future<CreateFileResult> run(
FsRepository fs, {
CancellationToken? cancel,
}) async {
// Validate inputs
if (name.isEmpty) {
throw ArgumentError('File name cannot be empty');
}

if (kind == FileKind.folder) {
throw ArgumentError('Use CreateFolderTask for creating folders, not files');
}

// Resolve target folder
final targetFolder = await fs.getEntry(targetFolderId);
if (targetFolder == null) {
throw Exception('Target folder not found: $targetFolderId');
}

if (targetFolder is! FsFolder) {
throw Exception('Target must be a folder, not a file');
}

// Check for existing file with same name
final existingEntry = await _findExistingEntry(fs, targetFolder, name);

// Handle conflict based on policy
final (finalName, wasCreated) = await _handleConflict(
fs,
targetFolder,
existingEntry,
);

if (!wasCreated) {
// File was skipped due to conflict policy
final existingFile = existingEntry as FsFile;
return CreateFileResult(
file: existingFile,
wasCreated: false,
originalRequestedName: name,
warnings: ['File already exists and was skipped due to conflict policy'],
);
}

// Create file data
final fileData = FsFileData(
location: storageLocation ?? const StorageLocation.local(localPath: ''),
mime: mime,
typeMeta: typeMeta,
isContentAvailable: initialContentSource != null,
convertibleTo: const [],
);

// Create file base
final fileBase = FsEntryBase.create(
path: '${targetFolder.path}/$finalName',
name: finalName,
kind: kind,
extension: extension,
sizeBytes: sizeBytes,
access: access,
timestamps: timestamps ?? EntryTimestamps(createdAt: DateTime.now()),
meta: meta,
);

// Create the file entry
final newFile = FsEntry.file(
base: fileBase,
data: fileData,
);

// Save to repository
final createdFile = await fs.createEntry(newFile, parentId: targetFolderId);

// Handle initial content if specified
final contentSource = initialContentSource;
if (contentSource != null) {
await _handleInitialContent(fs, createdFile as FsFile, contentSource);
}

return CreateFileResult(
file: createdFile as FsFile,
wasCreated: true,
originalRequestedName: name != finalName ? name : null,
warnings: name != finalName ? ['File was renamed to avoid conflict'] : [],
);
}

/// Finds existing entry with the same name in target folder
Future<FsEntry?> _findExistingEntry(
FsRepository fs,
FsFolder targetFolder,
String fileName,
) async {
for (final childRef in targetFolder.data.children) {
if (childRef.name == fileName) {
return await fs.getEntry(childRef.id);
}
}
return null;
}

/// Handles file naming conflicts based on conflict policy
Future<(String, bool)> _handleConflict(
FsRepository fs,
FsFolder targetFolder,
FsEntry? existingEntry,
) async {
if (existingEntry == null) {
return (name, true); // No conflict, proceed with original name
}

switch (conflictPolicy) {
case CreateFileConflictPolicy.overwrite:
if (existingEntry is FsFile) {
// Can overwrite files
return (name, true);
} else {
throw Exception('Cannot overwrite folder with file');
}

case CreateFileConflictPolicy.fail:
throw Exception('File already exists: $name');

case CreateFileConflictPolicy.skip:
return (name, false);

case CreateFileConflictPolicy.rename:
return await _generateUniqueName(fs, targetFolder, name);
}
}

/// Generates a unique name by appending a counter
Future<(String, bool)> _generateUniqueName(
FsRepository fs,
FsFolder targetFolder,
String baseName,
) async {
final extension = this.extension;
final baseNameWithoutExt = extension != null && baseName.endsWith('.$extension')
? baseName.substring(0, baseName.length - extension.length - 1)
: baseName;

for (int i = 1; i <= 100; i++) {
final candidateName = extension != null
? '$baseNameWithoutExt ($i).$extension'
: '$baseName ($i)';

final exists = await _findExistingEntry(fs, targetFolder, candidateName);
if (exists == null) {
return (candidateName, true);
}
}

throw Exception('Could not find unique name for file: $baseName');
}

/// Handles initial content setup for the new file
Future<void> _handleInitialContent(
FsRepository fs,
FsFile newFile,
String contentSource,
) async {
// Implementation depends on what contentSource represents:
// - Could be a template identifier to load predefined content
// - Could be a source file ID to copy content from
// - Could be literal content data
// This would be implemented in the FsRepository
await fs.setFileContent(newFile.id, contentSource);
}
}

/// Abstract filesystem repository interface for dependency injection
abstract class FsRepository {
Future<FsEntry?> getEntry(String id);
Future<FsEntry> createEntry(FsEntry entry, {required String parentId});
Future<void> setFileContent(String fileId, String contentSource);
// Other filesystem operations...
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
