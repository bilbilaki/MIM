import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/foundation.dart';
import 'package:image/image.dart' as img;

class ImageItem {
  final String id;
  final String sourcePath; 
  String? thumbPath;
  ImageItem({required this.id, required this.sourcePath, this.thumbPath});
}

class ThumbGenerator {
  static Future<Uint8List> createThumbBytes(String imagePath, int targetSize) async {
    final bytes = await File(imagePath).readAsBytes();
    final image = img.decodeImage(bytes)!;
    final thumb = img.copyResize(image, width: targetSize);
    return Uint8List.fromList(img.encodeJpg(thumb, quality: 85));
  }

  static Future<Uint8List> createThumbBytesIsolate(Map args) {
    return compute(createThumbSync, args);
  }
}
Uint8List createThumbSync(Map args) {
  final path = args['path'] as String;
  final size = args['size'] as int;
  final bytes = File(path).readAsBytesSync();
  final image = img.decodeImage(bytes)!;
  final thumb = img.copyResize(image, width: size);
  return Uint8List.fromList(img.encodeJpg(thumb, quality: 85));
}