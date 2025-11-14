import 'dart:io';
import 'package:flutter/material.dart';
import 'package:path/path.dart' as p;
import '../../widgets/icons/folder_icon_helper.dart';

/// A tree view sidebar showing directory structure
class TreeSidebar extends StatefulWidget {
  final String rootPath;
  final String? currentPath;
  final Function(String) onPathSelected;
  final double width;

  const TreeSidebar({
    super.key,
    required this.rootPath,
    this.currentPath,
    required this.onPathSelected,
    this.width = 280,
  });

  @override
  State<TreeSidebar> createState() => _TreeSidebarState();
}

class _TreeSidebarState extends State<TreeSidebar> {
  final Map<String, bool> _expandedDirs = {};
  final Map<String, List<Directory>> _cachedSubdirs = {};
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    // Auto-expand root
    _expandedDirs[widget.rootPath] = true;
    _loadSubdirectories(widget.rootPath);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  Future<void> _loadSubdirectories(String dirPath) async {
    if (_cachedSubdirs.containsKey(dirPath)) return;

    try {
      final dir = Directory(dirPath);
      if (!await dir.exists()) return;

      final entities = await dir.list().toList();
      final subdirs = entities
          .whereType<Directory>()
          .where((d) => !p.basename(d.path).startsWith('.')) // Skip hidden folders
          .toList();

      subdirs.sort((a, b) => p.basename(a.path).toLowerCase().compareTo(
            p.basename(b.path).toLowerCase(),
          ));

      if (mounted) {
        setState(() {
          _cachedSubdirs[dirPath] = subdirs;
        });
      }
    } catch (e) {
      // Silently fail for permission errors, etc.
      if (mounted) {
        setState(() {
          _cachedSubdirs[dirPath] = [];
        });
      }
    }
  }

  void _toggleExpanded(String dirPath) {
    setState(() {
      _expandedDirs[dirPath] = !(_expandedDirs[dirPath] ?? false);
    });
    if (_expandedDirs[dirPath] == true) {
      _loadSubdirectories(dirPath);
    }
  }

  Widget _buildFolderIcon(String folderName) {
    // Using the FolderIconHelper - replace with your SVG implementation later
    return FolderIconHelper.getIcon(folderName, size: 18);
  }

  Widget _buildTreeNode(String dirPath, int depth) {
    final isExpanded = _expandedDirs[dirPath] ?? false;
    final subdirs = _cachedSubdirs[dirPath] ?? [];
    final isSelected = widget.currentPath != null && 
                       (dirPath == widget.currentPath || 
                        p.equals(dirPath, widget.currentPath!));
    final folderName = p.basename(dirPath);
    final hasChildren = subdirs.isNotEmpty;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InkWell(
          onTap: () => widget.onPathSelected(dirPath),
          child: Container(
            padding: EdgeInsets.only(
              left: 8.0 + (depth * 16.0),
              right: 8.0,
              top: 6.0,
              bottom: 6.0,
            ),
            color: isSelected
                ? Theme.of(context).colorScheme.primaryContainer.withOpacity(0.3)
                : null,
            child: Row(
              children: [
                // Expand/collapse arrow
                SizedBox(
                  width: 20,
                  child: hasChildren
                      ? GestureDetector(
                          onTap: () => _toggleExpanded(dirPath),
                          child: Icon(
                            isExpanded
                                ? Icons.keyboard_arrow_down
                                : Icons.keyboard_arrow_right,
                            size: 18,
                            color: Colors.grey[600],
                          ),
                        )
                      : null,
                ),
                const SizedBox(width: 4),
                // Folder icon (placeholder for SVG)
                _buildFolderIcon(folderName),
                const SizedBox(width: 8),
                // Folder name
                Expanded(
                  child: Text(
                    folderName,
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                      color: isSelected
                          ? Theme.of(context).colorScheme.primary
                          : null,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          ),
        ),
        // Children
        if (isExpanded && hasChildren)
          ...subdirs.map((subdir) => _buildTreeNode(subdir.path, depth + 1)),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        border: Border(
          right: BorderSide(
            color: Theme.of(context).dividerColor,
            width: 1,
          ),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header
          Container(
            padding: const EdgeInsets.all(12.0),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.surfaceContainerHighest,
              border: Border(
                bottom: BorderSide(
                  color: Theme.of(context).dividerColor,
                  width: 1,
                ),
              ),
            ),
            child: Row(
              children: [
                Icon(
                  Icons.folder_open,
                  size: 20,
                  color: Theme.of(context).colorScheme.primary,
                ),
                const SizedBox(width: 8),
                const Text(
                  'Folders',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          // Tree view
          Expanded(
            child: Scrollbar(
              controller: _scrollController,
              thumbVisibility: true,
              child: SingleChildScrollView(
                controller: _scrollController,
                child: _buildTreeNode(widget.rootPath, 0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/// A wrapper widget that provides a collapsible sidebar
class CollapsibleTreeSidebar extends StatefulWidget {
  final String rootPath;
  final String? currentPath;
  final Function(String) onPathSelected;
  final Widget child;

  const CollapsibleTreeSidebar({
    super.key,
    required this.rootPath,
    this.currentPath,
    required this.onPathSelected,
    required this.child,
  });

  @override
  State<CollapsibleTreeSidebar> createState() => _CollapsibleTreeSidebarState();
}

class _CollapsibleTreeSidebarState extends State<CollapsibleTreeSidebar> {
  bool _isSidebarVisible = true;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Sidebar
        if (_isSidebarVisible)
          TreeSidebar(
            rootPath: widget.rootPath,
            currentPath: widget.currentPath,
            onPathSelected: widget.onPathSelected,
          ),
        // Toggle button
        Container(
          width: 24,
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.surfaceContainerHighest,
            border: Border(
              right: _isSidebarVisible
                  ? BorderSide.none
                  : BorderSide(
                      color: Theme.of(context).dividerColor,
                      width: 1,
                    ),
            ),
          ),
          child: Center(
            child: IconButton(
              padding: EdgeInsets.zero,
              visualDensity: VisualDensity.compact,
              iconSize: 18,
              icon: Icon(
                _isSidebarVisible
                    ? Icons.chevron_left
                    : Icons.chevron_right,
              ),
              onPressed: () {
                setState(() {
                  _isSidebarVisible = !_isSidebarVisible;
                });
              },
              tooltip: _isSidebarVisible ? 'Hide sidebar' : 'Show sidebar',
            ),
          ),
        ),
        // Main content
        Expanded(child: widget.child),
      ],
    );
  }
}
