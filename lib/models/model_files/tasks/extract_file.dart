import 'package:freezed_annotation/freezed_annotation.dart';

import '../../model_core/fs_entry.dart';
import '../../model_core/fs_entry_union.dart';


part 'extract_file.freezed.dart';
part 'extract_file.g.dart';

/// Result of extracting an archive file
@freezed
class ExtractFileResult with _$ExtractFileResult {
const factory ExtractFileResult({
/// ID of the destination folder where contents were extracted
required String destinationFolderId,

/// List of entries that were created during extraction
required List<FsEntry> extractedEntries,

/// Number of files successfully extracted
required int filesExtracted,

/// Number of folders successfully extracted
required int foldersExtracted,

/// Any errors encountered during extraction
@Default(<String>[]) List<String> errors,
}) = _ExtractFileResult;

factory ExtractFileResult.fromJson(Map<String, dynamic> json) =>
_$ExtractFileResultFromJson(json);
}

/// Task for extracting contents from a single archive file
@freezed
class ExtractFileTask with _$ExtractFileTask {
const ExtractFileTask._();

const factory ExtractFileTask({
/// ID of the archive file to extract
required String archiveFileId,

/// ID of the target folder where contents should be extracted
required String targetFolderId,

/// Optional name for the extraction folder (if null, uses archive name)
String? extractionFolderName,

/// Whether to overwrite existing files with same names
@Default(false) bool overwriteExisting,

/// Optional password for encrypted archives
String? password,

/// Specific files to extract (if null, extract all)
List<String>? filesToExtract,
}) = _ExtractFileTask;

factory ExtractFileTask.fromJson(Map<String, dynamic> json) =>
_$ExtractFileTaskFromJson(json);

/// Executes the archive extraction task
///
/// [fs] - Filesystem repository for operations
/// [cancel] - Optional cancellation token
///
/// Returns [ExtractFileResult] with extraction details
///
/// Throws [StateError] if archive file is not found or not an archive
/// Throws [ArgumentError] if target folder is not found or not a folder
/// Throws [FormatException] if archive format is unsupported or corrupted
Future<ExtractFileResult> run(
FsRepository fs, {
CancellationToken? cancel,
}) async {
// Validate archive file exists and is an archive
final archiveEntry = await fs.getEntryById(archiveFileId);
if (archiveEntry == null) {
throw StateError('Archive file with id $archiveFileId not found');
}

if (archiveEntry.kind != FileKind.archive) {
throw StateError('Entry ${archiveEntry.id} is not an archive file');
}

// Validate target folder exists and is a folder
final targetFolder = await fs.getEntryById(targetFolderId);
if (targetFolder == null) {
throw ArgumentError('Target folder with id $targetFolderId not found');
}

if (targetFolder is! FsFolder) {
throw ArgumentError('Target entry ${targetFolder.id} is not a folder');
}

cancel?.throwIfCancellationRequested();

// Extract archive contents using repository
final result = await fs.extractArchive(
archiveEntry: archiveEntry as FsFile,
targetFolder: targetFolder,
extractionFolderName: extractionFolderName,
overwriteExisting: overwriteExisting,
password: password,
filesToExtract: filesToExtract,
cancel: cancel,
);

return ExtractFileResult(
destinationFolderId: result.destinationFolderId,
extractedEntries: result.extractedEntries,
filesExtracted: result.filesExtracted,
foldersExtracted: result.foldersExtracted,
errors: result.errors,
);
}
}

/// Abstract filesystem repository interface for archive operations
abstract class FsRepository {
/// Gets an entry by its ID
Future<FsEntry?> getEntryById(String id);

/// Extracts contents from an archive file
Future<ArchiveExtractionResult> extractArchive({
required FsFile archiveEntry,
required FsFolder targetFolder,
String? extractionFolderName,
bool overwriteExisting,
String? password,
List<String>? filesToExtract,
CancellationToken? cancel,
});
}

/// Result type for archive extraction operations
class ArchiveExtractionResult {
final String destinationFolderId;
final List<FsEntry> extractedEntries;
final int filesExtracted;
final int foldersExtracted;
final List<String> errors;

ArchiveExtractionResult({
required this.destinationFolderId,
required this.extractedEntries,
required this.filesExtracted,
required this.foldersExtracted,
required this.errors,
});
}

/// Token for cancelling asynchronous operations
abstract class CancellationToken {
bool get isCancellationRequested;
void throwIfCancellationRequested();
}
