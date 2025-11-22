import 'package:freezed_annotation/freezed_annotation.dart';

part 'archiv_file.freezed.dart';
part 'archiv_file.g.dart';

/// Task for archiving one or more files/folders into an archive file.
@freezed
class ArchiveFileTask with _$ArchiveFileTask {
const ArchiveFileTask._();

const factory ArchiveFileTask({
/// IDs of the source entries to be archived
required List<String> sourceEntryIds,

/// ID of the target folder where the archive will be created
required String targetFolderId,

/// Optional name for the archive file (without extension)
String? archiveName,

/// Archive format (e.g., 'zip', 'tar', '7z')
@Default('zip') String format,

/// Whether to preserve folder structure in the archive
@Default(true) bool preserveStructure,

/// Compression level (0-9, where 0 = no compression, 9 = max compression)
@Default(6) int compressionLevel,
}) = _ArchiveFileTask;

factory ArchiveFileTask.fromJson(Map<String, dynamic> json) =>
_$ArchiveFileTaskFromJson(json);
}

/// Result of archive file operation
@freezed
class ArchiveFileResult with _$ArchiveFileResult {
const factory ArchiveFileResult({
/// ID of the created archive file
required String archiveId,

/// IDs of source entries that were successfully archived
required List<String> includedSourceIds,

/// Total size of the archive in bytes
required int archiveSizeBytes,

/// Number of files included in the archive
required int fileCount,

/// Number of folders included in the archive
required int folderCount,

/// Any errors encountered during archiving
@Default(<String>[]) List<String> errors,
}) = _ArchiveFileResult;

factory ArchiveFileResult.fromJson(Map<String, dynamic> json) =>
_$ArchiveFileResultFromJson(json);
}
