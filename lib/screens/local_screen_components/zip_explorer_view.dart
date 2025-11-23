import 'package:du/models/model_core/fs_entry_union.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart' as p;

import '../../providers/local_explorer_provider.dart';
import '../../providers/zip_explorer_provider.dart';
import 'local_screen_context_menus.dart';
import 'local_screen_file_operations.dart';
import 'local_screen_models.dart';

/// A screen component that displays the contents of a ZIP file
class ZipExplorerView extends StatelessWidget {
  final ZipExplorerProvider zipProvider;
  final LocalProvider localProvider;
  final Function(String) showSnackBar;
  final ViewMode viewMode;
  final double gridCrossAxisCount;

  const ZipExplorerView({
    super.key,
    required this.zipProvider,
    required this.localProvider,
    required this.showSnackBar,
    this.viewMode = ViewMode.grid,
    this.gridCrossAxisCount = 3.0,
  });

  @override
  Widget build(BuildContext context) {
    if (!zipProvider.isInZipMode || zipProvider.currentZipPath == null) {
      return const Center(
        child: Text('Not in ZIP exploration mode'),
      );
    }

    final entries = zipProvider.zipEntries;
    
    return Scaffold(
      appBar: AppBar(
        title: Text(_getCurrentPathTitle()),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => _handleBackPress(context),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            tooltip: 'Add files to ZIP',
            onPressed: () => _handleAddFiles(context),
          ),
          IconButton(
            icon: const Icon(Icons.unarchive),
            tooltip: 'Extract all',
            onPressed: () => _handleExtractAll(context),
          ),
          IconButton(
            icon: const Icon(Icons.close),
            tooltip: 'Close ZIP',
            onPressed: () => _handleClose(context),
          ),
        ],
      ),
      body: entries.isEmpty
          ? const Center(child: Text('Empty ZIP or folder'))
          : _buildEntriesList(context, entries),
    );
  }

  String _getCurrentPathTitle() {
    final zipName = p.basename(zipProvider.currentZipPath!);
    final currentPath = zipProvider.currentPathInZip;
    
    if (currentPath == null || currentPath.isEmpty) {
      return zipName;
    }
    
    return '${p.basename(currentPath)} (in $zipName)';
  }

  Widget _buildEntriesList(BuildContext context, List<FsEntry> entries) {
    if (viewMode == ViewMode.list) {
      return ListView.builder(
        itemCount: entries.length,
        itemBuilder: (context, index) {
          return _buildEntryTile(context, entries[index]);
        },
      );
    } else {
      return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: gridCrossAxisCount.toInt(),
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
          childAspectRatio: 0.8,
        ),
        padding: const EdgeInsets.all(8),
        itemCount: entries.length,
        itemBuilder: (context, index) {
          return _buildEntryCard(context, entries[index]);
        },
      );
    }
  }

  Widget _buildEntryTile(BuildContext context, FsEntry entry) {
    IconData icon;
    String title;
    String? subtitle;
    
    if (entry is FolderItem) {
      icon = Icons.folder;
      title = entry.name;
      subtitle = 'Folder';
    } else if (entry is DocumentItem) {
      icon = Icons.description;
      title = entry.name;
      subtitle = entry.formattedSize;
    } else if (entry is ImageItem) {
      icon = Icons.image;
      title = entry.name;
      subtitle = entry.formattedSize;
    } else if (entry is MovieItem) {
      icon = Icons.movie;
      title = entry.name;
      subtitle = entry.formattedSize;
    } else if (entry is AudioItem) {
      icon = Icons.audiotrack;
      title = entry.name;
      subtitle = entry.formattedSize;
    } else {
      icon = Icons.insert_drive_file;
      title = 'Unknown';
      subtitle = null;
    }

    return ListTile(
      leading: Icon(icon, size: 40),
      title: Text(title),
      subtitle: subtitle != null ? Text(subtitle) : null,
      onTap: () => _handleEntryTap(context, entry),
      onLongPress: () => _showEntryContextMenu(context, entry),
    );
  }

  Widget _buildEntryCard(BuildContext context, FsEntry entry) {
    IconData icon;
    String title;
    Color color;
    
    if (entry is FolderItem) {
      icon = Icons.folder;
      title = entry.name;
      color = Colors.amber;
    } else if (entry is DocumentItem) {
      icon = Icons.description;
      title = entry.name;
      color = Colors.blue;
    } else if (entry is ImageItem) {
      icon = Icons.image;
      title = entry.name;
      color = Colors.green;
    } else if (entry is MovieItem) {
      icon = Icons.movie;
      title = entry.name;
      color = Colors.purple;
    } else if (entry is AudioItem) {
      icon = Icons.audiotrack;
      title = entry.name;
      color = Colors.orange;
    } else {
      icon = Icons.insert_drive_file;
      title = 'Unknown';
      color = Colors.grey;
    }

    return Card(
      child: InkWell(
        onTap: () => _handleEntryTap(context, entry),
        onLongPress: () => _showEntryContextMenu(context, entry),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 48, color: color),
            const SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: Text(
                title,
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(fontSize: 12),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _handleEntryTap(BuildContext context, FsEntry entry) {
    if (entry is FolderItem) {
      // Navigate into the folder
      zipProvider.navigateIntoZipFolder(entry.path);
    } else if (entry is DocumentItem) {
      // Edit the document
      LocalScreenFileOperations.editFileInZip(
        context,
        entry.path,
        zipProvider,
        showSnackBar,
      );
    } else {
      showSnackBar('Preview not available for this file type');
    }
  }

  void _showEntryContextMenu(BuildContext context, Entries entry) {
    final isDirectory = entry is FolderItem;
    final entryPath = _getEntryPath(entry);
    
    LocalScreenContextMenus.showZipEntryContextMenu(
      context,
      entryPath,
      isDirectory,
      (path) => _handleExtractEntry(context, path),
      (path) => _handleDeleteEntry(context, path),
      (path) => LocalScreenFileOperations.renameInZip(context, path, zipProvider, showSnackBar),
      !isDirectory
          ? (path) => LocalScreenFileOperations.editFileInZip(context, path, zipProvider, showSnackBar)
          : null,
    );
  }

  String _getEntryPath(FsEntry entry) {
    if (entry is FolderItem) {
      return entry.path;
    } else if (entry is DocumentItem) {
      return entry.path;
    } else if (entry is ImageItem) {
      return entry.path;
    } else if (entry is MovieItem) {
      return entry.path;
    } else if (entry is AudioItem) {
      return entry.path;
    }
    return '';
  }

  void _handleBackPress(BuildContext context) {
    zipProvider.navigateUpInZip();
  }

  void _handleClose(BuildContext context) {
    zipProvider.exitZipMode();
    Navigator.of(context).pop();
  }

  void _handleAddFiles(BuildContext context) {
    // This would be handled by ZipOperationDialogs
    showSnackBar('Add files functionality not yet implemented');
  }

  void _handleExtractAll(BuildContext context) {
    LocalScreenFileOperations.extractSelectedFromZip(
      context,
      zipProvider.zipEntries.map((e) => _getEntryPath(e)).toList(),
      zipProvider,
      localProvider,
      showSnackBar,
    );
  }

  void _handleExtractEntry(BuildContext context, String entryPath) {
    LocalScreenFileOperations.extractSelectedFromZip(
      context,
      [entryPath],
      zipProvider,
      localProvider,
      showSnackBar,
    );
  }

  void _handleDeleteEntry(BuildContext context, String entryPath) {
    LocalScreenFileOperations.deleteFromZip(
      context,
      [entryPath],
      zipProvider,
      showSnackBar,
    );
  }
}
