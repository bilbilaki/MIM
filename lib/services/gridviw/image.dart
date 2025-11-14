

import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:flutter/foundation.dart'; // compute
import 'package:lru/lru.dart';

import '../../models/imagegallery.dart';





class ThumbCacheService {
  final Directory cacheDir;
  final LruCache<String, Uint8List> memoryCache = LruCache(100); // hold N in-memory

  ThumbCacheService._(this.cacheDir);

  static Future<ThumbCacheService> create() async {
    final dir = await getTemporaryDirectory();
    final thumbDir = Directory('${dir.path}/thumbs');
    if (!thumbDir.existsSync()) thumbDir.createSync(recursive: true);
    return ThumbCacheService._(thumbDir);
  }

  String _thumbFilePath(String id) => '${cacheDir.path}/thumb_$id.jpg';

  Future<File> _writeThumb(String id, Uint8List bytes) async {
    final f = File(_thumbFilePath(id));
    await f.writeAsBytes(bytes, flush: true);
    return f;
  }

  Future<Uint8List?> getThumbnail(ImageItem item, int size) async {
    if (memoryCache.containsKey(item.id)) return memoryCache[item.id];

    final path = _thumbFilePath(item.id);
    if (await File(path).exists()) {
      final b = await File(path).readAsBytes();
      memoryCache[item.id] = b;
      return b;
    }

    // generate
    final bytes = await compute(createThumbSync, {'path': item.sourcePath, 'size': size});
    await _writeThumb(item.id, bytes);
    memoryCache[item.id] = bytes;
    return bytes;
  }
}

