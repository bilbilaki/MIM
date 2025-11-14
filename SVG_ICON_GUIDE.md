# SVG Icon Integration Guide

## Overview
The tree sidebar uses placeholder Material Icons. Replace them with your SVG icons by following these steps.

## Steps to Add SVG Icons

### 1. Add flutter_svg dependency
```yaml
# pubspec.yaml
dependencies:
  flutter_svg: ^2.0.10
```

### 2. Add your SVG files to assets
```yaml
# pubspec.yaml
flutter:
  assets:
    - assets/icons/folder_music.svg
    - assets/icons/folder_images.svg
    - assets/icons/folder_videos.svg
    - assets/icons/folder_documents.svg
    - assets/icons/folder_downloads.svg
    - assets/icons/folder_desktop.svg
    - assets/icons/folder_work.svg
    - assets/icons/folder_generic.svg
```

### 3. Update FolderIconHelper
Open: `lib/widgets/icons/folder_icon_helper.dart`

Replace the `_getIconWidget` method:

```dart
import 'package:flutter_svg/flutter_svg.dart';

static Widget _getIconWidget(FolderType type, double size) {
  String assetPath;
  
  switch (type) {
    case FolderType.music:
      assetPath = 'assets/icons/folder_music.svg';
      break;
    case FolderType.images:
      assetPath = 'assets/icons/folder_images.svg';
      break;
    case FolderType.videos:
      assetPath = 'assets/icons/folder_videos.svg';
      break;
    case FolderType.documents:
      assetPath = 'assets/icons/folder_documents.svg';
      break;
    case FolderType.downloads:
      assetPath = 'assets/icons/folder_downloads.svg';
      break;
    case FolderType.desktop:
      assetPath = 'assets/icons/folder_desktop.svg';
      break;
    case FolderType.work:
      assetPath = 'assets/icons/folder_work.svg';
      break;
    case FolderType.generic:
    default:
      assetPath = 'assets/icons/folder_generic.svg';
      break;
  }

  return SvgPicture.asset(
    assetPath,
    width: size,
    height: size,
  );
}
```

## Current Icon Mappings

| Folder Name Contains | Icon Type | Current Placeholder |
|---------------------|-----------|---------------------|
| music, audio        | Music     | Icons.music_note (purple) |
| picture, image, photo | Images  | Icons.image (blue) |
| video, movie        | Videos    | Icons.video_library (red) |
| document, doc       | Documents | Icons.description (orange) |
| download            | Downloads | Icons.download (green) |
| desktop             | Desktop   | Icons.computer (teal) |
| work, project       | Work      | Icons.work (indigo) |
| (default)           | Generic   | Icons.folder (amber) |

## Directory Structure
```
assets/
└── icons/
    ├── folder_music.svg
    ├── folder_images.svg
    ├── folder_videos.svg
    ├── folder_documents.svg
    ├── folder_downloads.svg
    ├── folder_desktop.svg
    ├── folder_work.svg
    └── folder_generic.svg
```

## Testing
After adding SVG files:
1. Run `flutter pub get`
2. Restart the app (hot reload might not pick up new assets)
3. Navigate to folders with different names to see different icons
