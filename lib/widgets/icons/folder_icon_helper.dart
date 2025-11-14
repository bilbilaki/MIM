import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

/// Helper class for rendering custom folder icons
/// Replace the placeholder Icon widgets with your SVG implementations
class FolderIconHelper {
  /// Returns an icon widget for a given folder type
  /// You can replace this with flutter_svg: SvgPicture.asset() when ready
  static Widget getIcon(String folderName, {double size = 18}) {
    final type = _getFolderType(folderName);
    return _getIconWidget(type, size);
  }

  /// Determine folder type based on name
  static FolderType _getFolderType(String folderName) {
    final name = folderName.toLowerCase();
    
    if (name.contains('music') || name.contains('audio')) {
      return FolderType.music;
    } else if (name.contains('picture') || name.contains('image') || 
               name.contains('photo')) {
      return FolderType.images;
    } else if (name.contains('video') || name.contains('movie')) {
      return FolderType.videos;
    } else if (name.contains('document') || name.contains('doc')) {
      return FolderType.documents;
    } else if (name.contains('download')) {
      return FolderType.downloads;
    } else if (name.contains('desktop')) {
      return FolderType.desktop;
    } else if (name.contains('work') || name.contains('project')) {
      return FolderType.work;
    } else {
      return FolderType.generic;
    }
  }

  /// Get icon widget based on folder type
  /// TODO: Replace with SvgPicture.asset('assets/icons/folder_music.svg')
  static Widget _getIconWidget(FolderType type, double size) {
    IconData iconData;
    Color color;

    switch (type) {
      case FolderType.music:
        iconData = Icons.music_note;
        color = Colors.purple;
       return SvgPicture.asset('assets/icons/folder_music.svg', width: size, height: size);
        break;
      case FolderType.images:
        iconData = Icons.image;
        color = Colors.blue;
       return SvgPicture.asset('assets/icons/folder_images.svg', width: size, height: size);
        break;
      case FolderType.videos:
        iconData = Icons.video_library;
        color = Colors.red;
       return SvgPicture.asset('assets/icons/folder_videos.svg', width: size, height: size);
        break;
      case FolderType.documents:
        iconData = Icons.description;
        color = Colors.orange;
       return SvgPicture.asset('assets/icons/folder_documents.svg', width: size, height: size);
        break;
      case FolderType.downloads:
        iconData = Icons.download;
        color = Colors.green;
        return SvgPicture.asset('assets/icons/folder_downloads.svg', width: size, height: size);
        break;
      case FolderType.desktop:
        iconData = Icons.computer;
        color = Colors.teal;
       return SvgPicture.asset('assets/icons/folder_desktop.svg', width: size, height: size);
        break;
      case FolderType.work:
        iconData = Icons.work;
        color = Colors.indigo;
        return SvgPicture.asset('assets/icons/folder_work.svg', width: size, height: size);
        break;
      case FolderType.generic:
        iconData = Icons.folder;
        color = Colors.amber;
        return SvgPicture.asset('assets/icons/folder_generic.svg', width: size, height: size);
        break;
    }

    // Placeholder: Using Material Icons
    return Icon(iconData, size: size, color: color);
  }

  /// Get color for folder type (useful for other UI elements)
  static Color getColor(String folderName) {
    final type = _getFolderType(folderName);
    switch (type) {
      case FolderType.music:
        return Colors.purple;
      case FolderType.images:
        return Colors.blue;
      case FolderType.videos:
        return Colors.red;
      case FolderType.documents:
        return Colors.orange;
      case FolderType.downloads:
        return Colors.green;
      case FolderType.desktop:
        return Colors.teal;
      case FolderType.work:
        return Colors.indigo;
      case FolderType.generic:
        return Colors.amber;
    }
  }
}

/// Enum for folder types
enum FolderType {
  music,
  images,
  videos,
  documents,
  downloads,
  desktop,
  work,
  generic,
}

/// Extension to get SVG asset path (for when you're ready to use SVGs)
extension FolderTypeExtension on FolderType {
  String get svgAssetPath {
    switch (this) {
      case FolderType.music:
        return 'assets/icons/folder_music.svg';
      case FolderType.images:
        return 'assets/icons/folder_images.svg';
      case FolderType.videos:
        return 'assets/icons/folder_videos.svg';
      case FolderType.documents:
        return 'assets/icons/folder_documents.svg';
      case FolderType.downloads:
        return 'assets/icons/folder_downloads.svg';
      case FolderType.desktop:
        return 'assets/icons/folder_desktop.svg';
      case FolderType.work:
        return 'assets/icons/folder_work.svg';
      case FolderType.generic:
        return 'assets/icons/folder_generic.svg';
    }
  }
}
