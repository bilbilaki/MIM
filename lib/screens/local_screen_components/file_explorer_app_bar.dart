import 'dart:io';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../providers/local_explorer_provider.dart';
import 'workspace_copy_dialog.dart';

/// App bar for file explorer with selection controls
class FileExplorerAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final VoidCallback? onBackPressed;

  const FileExplorerAppBar({
    super.key,
    this.title,
    this.onBackPressed,
  });

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return Consumer<LocalProvider>(
      builder: (context, provider, child) {
        final hasSelection = provider.hasSelection;
        final selectedCount = provider.selectedFiles.length;

        if (hasSelection) {
          return AppBar(
            leading: IconButton(
              icon: const Icon(Icons.close),
              onPressed: () => provider.clearSelection(),
              tooltip: 'Clear selection',
            ),
            title: Text('$selectedCount selected'),
            actions: [
              IconButton(
                icon: const Icon(Icons.select_all),
                onPressed: () => provider.selectAll(),
                tooltip: 'Select all',
              ),
              if (provider.isWorkspaceMode)
                PopupMenuButton<String>(
                  icon: const Icon(Icons.more_vert),
                  onSelected: (value) => _handleAction(context, value, provider),
                  itemBuilder: (context) => const [
                    PopupMenuItem(
                      value: 'delete',
                      child: Row(
                        children: [
                          Icon(Icons.delete),
                          SizedBox(width: 16),
                          Text('Delete'),
                        ],
                      ),
                    ),
                  ],
                )
              else
                PopupMenuButton<String>(
                  icon: const Icon(Icons.more_vert),
                  onSelected: (value) => _handleAction(context, value, provider),
                  itemBuilder: (context) => const [
                    PopupMenuItem(
                      value: 'copy',
                      child: Row(
                        children: [
                          Icon(Icons.copy),
                          SizedBox(width: 16),
                          Text('Copy to Workspace'),
                        ],
                      ),
                    ),
                    PopupMenuItem(
                      value: 'move',
                      child: Row(
                        children: [
                          Icon(Icons.drive_file_move),
                          SizedBox(width: 16),
                          Text('Move to Workspace'),
                        ],
                      ),
                    ),
                  ],
                ),
            ],
          );
        }

        return AppBar(
          leading: onBackPressed != null
              ? IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: onBackPressed,
                )
              : null,
          title: Text(title ?? 'File Explorer'),
          actions: [
            IconButton(
              icon: const Icon(Icons.refresh),
              onPressed: () => provider.refresh(null),
              tooltip: 'Refresh',
            ),
          ],
        );
      },
    );
  }

  void _handleAction(BuildContext context, String action, LocalProvider provider) async {
    switch (action) {
      case 'copy':
        await showWorkspaceCopyDialog(context, isMove: false);
        break;
      case 'move':
        await showWorkspaceCopyDialog(context, isMove: true);
        break;
      case 'delete':
        await _handleDeleteSelected(context, provider);
        break;
    }
  }

  Future<void> _handleDeleteSelected(BuildContext context, LocalProvider provider) async {
    final fileCount = provider.selectedFiles.length;

    final confirmed = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Delete Files'),
        content: Text(
          'Delete $fileCount ${fileCount == 1 ? 'item' : 'items'}? This action cannot be undone.',
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: const Text('Cancel'),
          ),
          FilledButton(
            onPressed: () => Navigator.of(context).pop(true),
            style: FilledButton.styleFrom(
              backgroundColor: Colors.red,
            ),
            child: const Text('Delete'),
          ),
        ],
      ),
    );

    if (confirmed == true && context.mounted) {
      final selectedFiles = List<String>.from(provider.selectedFiles);
      provider.clearSelection();

      int successCount = 0;
      for (final filePath in selectedFiles) {
        try {
          // Check if file or directory and delete accordingly
          final entity = await FileSystemEntity.type(filePath);
          bool success = false;
          
          if (entity == FileSystemEntityType.directory) {
            success = await provider.deleteFolder(filePath);
          } else if (entity == FileSystemEntityType.file) {
            success = await provider.deleteFile(filePath);
          }
          
          if (success) successCount++;
        } catch (e) {
          // Continue with next file
        }
      }

      if (context.mounted) {
        final failCount = selectedFiles.length - successCount;
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              failCount == 0
                  ? 'Deleted $successCount ${successCount == 1 ? 'item' : 'items'}'
                  : 'Deleted $successCount, failed $failCount ${failCount == 1 ? 'item' : 'items'}',
            ),
            backgroundColor: failCount == 0 ? Colors.green : Colors.orange,
          ),
        );

        if (successCount > 0) {
          await provider.refresh(null);
        }
      }
    }
  }
}
