import 'package:freezed_annotation/freezed_annotation.dart';

part 'duplicated_folder.freezed.dart';
part 'duplicated_folder.g.dart';

/// Represents a group of folders that have identical content structure.
/// This is a model class for identifying and grouping duplicate folder hierarchies.
@freezed
class DuplicatedFolderGroup with _$DuplicatedFolderGroup {
const DuplicatedFolderGroup._();

const factory DuplicatedFolderGroup({
/// Unique identifier for this duplicate group
required String id,

/// The structural hash that identifies identical folder content
required String structureHash,

/// List of folder entries that are duplicates of each other
required List<String> folderIds,

/// Number of files contained in the folder structure
required int fileCount,

/// Total size in bytes of the duplicated content
required int totalSizeBytes,

/// When this duplicate group was detected
required DateTime detectedAt,
}) = _DuplicatedFolderGroup;

factory DuplicatedFolderGroup.fromJson(Map<String, dynamic> json) =>
_$DuplicatedFolderGroupFromJson(json);

/// Number of duplicate folders in this group
int get folderCount => folderIds.length;

/// Convenience getter to check if this is a significant duplication
bool get hasSignificantDuplication => folderIds.length > 1 && totalSizeBytes > 0;
}
