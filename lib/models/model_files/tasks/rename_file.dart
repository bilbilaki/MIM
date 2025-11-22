import 'package:freezed_annotation/freezed_annotation.dart';

import '../../model_core/fs_entry_union.dart';


part 'rename_file.freezed.dart';
part 'rename_file.g.dart';

/// Task for renaming a single file.
@freezed
class RenameFileTask with _$RenameFileTask {
const RenameFileTask._();

const factory RenameFileTask({
/// ID of the file to rename
required String fileId,

/// New name for the file (without path)
required String newName,
}) = _RenameFileTask;

factory RenameFileTask.fromJson(Map<String, dynamic> json) =>
_$RenameFileTaskFromJson(json);
}

/// Result of a file rename operation
@freezed
class RenameFileResult with _$RenameFileResult {
const factory RenameFileResult({
/// The updated file entry after rename
required FsFile file,

/// Original name before rename
required String oldName,

/// New name after rename
required String newName,
}) = _RenameFileResult;

factory RenameFileResult.fromJson(Map<String, dynamic> json) =>
_$RenameFileResultFromJson(json);
}
