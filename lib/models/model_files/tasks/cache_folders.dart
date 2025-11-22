import 'package:freezed_annotation/freezed_annotation.dart';

import '../../model_core/fs_entry_union.dart';
import '../../model_core/fs_folder_children.dart';


part 'cache_folders.freezed.dart';
part 'cache_folders.g.dart';

/// Task for building/refreshing cache metadata for folders
@freezed
class CacheFoldersTask with _$CacheFoldersTask {
const CacheFoldersTask._();

const factory CacheFoldersTask({
/// IDs of folders to cache/refresh
required List<String> folderIds,

/// Whether to recursively index subfolders
@Default(false) bool recursive,

/// Whether to compute folder sizes (can be expensive for large folders)
@Default(true) bool computeSizes,

/// Whether to update child references
@Default(true) bool updateChildren,

/// Maximum depth for recursive indexing (null = unlimited)
int? maxDepth,
}) = _CacheFoldersTask;

factory CacheFoldersTask.fromJson(Map<String, dynamic> json) =>
_$CacheFoldersTaskFromJson(json);

/// Main execution method
Future<CacheFoldersResult> run(
Future<FsEntry?> Function(String id) getEntry,
Future<void> Function(FsEntry entry) updateEntry, {
Future<List<FolderChildRef>> Function(String folderId)? getChildren,
}) async {
final results = <FolderCacheResult>[];
int totalFoldersProcessed = 0;
int totalFilesCounted = 0;
int totalSizeBytes = 0;

for (final folderId in folderIds) {
try {
final folder = await getEntry(folderId);
if (folder == null) {
results.add(FolderCacheResult(
folderId: folderId,
success: false,
error: 'Folder not found',
));
continue;
}

if (!folder.isFolder) {
results.add(FolderCacheResult(
folderId: folderId,
success: false,
error: 'Entry is not a folder',
));
continue;
}

final result = await _cacheSingleFolder(
folder,
getEntry,
updateEntry,
getChildren,
recursive: recursive,
computeSizes: computeSizes,
updateChildren: updateChildren,
maxDepth: maxDepth,
currentDepth: 0,
);

results.add(result);
totalFoldersProcessed++;
totalFilesCounted += result.filesCount;
totalSizeBytes += result.totalSizeBytes ?? 0;
} catch (e) {
results.add(FolderCacheResult(
folderId: folderId,
success: false,
error: 'Unexpected error: $e',
));
}
}

return CacheFoldersResult(
folderResults: results,
totalFoldersProcessed: totalFoldersProcessed,
totalFilesCounted: totalFilesCounted,
totalSizeBytes: totalSizeBytes,
);
}

Future<FolderCacheResult> _cacheSingleFolder(
FsEntry folder,
Future<FsEntry?> Function(String id) getEntry,
Future<void> Function(FsEntry entry) updateEntry,
Future<List<FolderChildRef>> Function(String folderId)? getChildren, {
required bool recursive,
required bool computeSizes,
required bool updateChildren,
required int? maxDepth,
required int currentDepth,
}) async {
int filesCount = 0;
int totalSizeBytes = 0;
final processedChildren = <FolderChildRef>[];

// Get current children if needed
if (updateChildren && getChildren != null) {
try {
final children = await getChildren(folder.id);
processedChildren.addAll(children);

// Update folder data with current children
final updatedFolder = folder.maybeMap(
folder: (f) => f.copyWith(
data: f.data.copyWith(
children: children,
isPartial: false,
),
),
orElse: () => folder,
);

await updateEntry(updatedFolder);
} catch (e) {
// Continue with existing children if available
final existingChildren = folder.maybeMap(
folder: (f) => f.data.children,
orElse: () => <FolderChildRef>[],
);
processedChildren.addAll(existingChildren);
}
} else {
// Use existing children
final existingChildren = folder.maybeMap(
folder: (f) => f.data.children,
orElse: () => <FolderChildRef>[],
);
processedChildren.addAll(existingChildren);
}

// Process children recursively if needed
if (recursive && (maxDepth == null || currentDepth < maxDepth)) {
for (final childRef in processedChildren) {
if (childRef.isFolder) {
final child = await getEntry(childRef.id);
if (child != null && child.isFolder) {
final childResult = await _cacheSingleFolder(
child,
getEntry,
updateEntry,
getChildren,
recursive: true,
computeSizes: computeSizes,
updateChildren: updateChildren,
maxDepth: maxDepth,
currentDepth: currentDepth + 1,
);

filesCount += childResult.filesCount;
totalSizeBytes += childResult.totalSizeBytes ?? 0;
}
} else {
filesCount++;
if (computeSizes) {
final file = await getEntry(childRef.id);
if (file != null && file.isFile) {
totalSizeBytes += file.base.sizeBytes ?? 0;
}
}
}
}
} else {
// Just count files at current level
filesCount = processedChildren.where((c) => !c.isFolder).length;

if (computeSizes) {
for (final childRef in processedChildren.where((c) => !c.isFolder)) {
final file = await getEntry(childRef.id);
if (file != null && file.isFile) {
totalSizeBytes += file.base.sizeBytes ?? 0;
}
}
}
}

// Update folder size if computed
if (computeSizes) {
final updatedFolder = folder.maybeMap(
folder: (f) => f.copyWith(
base: f.base.copyWith(sizeBytes: totalSizeBytes),
),
orElse: () => folder,
);
await updateEntry(updatedFolder);
}

return FolderCacheResult(
folderId: folder.id,
success: true,
filesCount: filesCount,
totalSizeBytes: totalSizeBytes,
childrenCount: processedChildren.length,
);
}
}

/// Result for caching a single folder
@freezed
class FolderCacheResult with _$FolderCacheResult {
const factory FolderCacheResult({
required String folderId,
required bool success,
String? error,
@Default(0) int filesCount,
int? totalSizeBytes,
@Default(0) int childrenCount,
}) = _FolderCacheResult;

factory FolderCacheResult.fromJson(Map<String, dynamic> json) =>
_$FolderCacheResultFromJson(json);
}

/// Overall result of the cache folders operation
@freezed
class CacheFoldersResult with _$CacheFoldersResult {
const factory CacheFoldersResult({
required List<FolderCacheResult> folderResults,
required int totalFoldersProcessed,
required int totalFilesCounted,
required int totalSizeBytes,
}) = _CacheFoldersResult;

factory CacheFoldersResult.fromJson(Map<String, dynamic> json) =>
_$CacheFoldersResultFromJson(json);
}
