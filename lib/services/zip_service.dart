import 'dart:async';
import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'package:path/path.dart' as p;
import 'package:native_zip/native_zip.dart';
import 'package:path_provider/path_provider.dart';

import '../providers/local_explorer_provider.dart';


class ZipService {
  final LocalProvider _provider = LocalProvider();

  void showProgress(ZipTaskFuture future) {
    var timer = Timer.periodic(const Duration(milliseconds: 500), (_) {
      var progress = future.processedSize / future.totalSize * 100;
      var compressRatio = future.compressedSize / future.processedSize * 100;
      var path = future.nowProcessingFilepath;
      log("progress: $progress%, compress ratio: $compressRatio%, path: $path");
    });
    future.whenComplete(() {
      log("finish");
      timer.cancel();
    });
  }

  Future<void> folderToZip(
    String folder,
    String outputZipFilePath, {
    bool cancel = false,
  }) async {
    var future = NativeZip.zipDir(folder, outputZipFilePath);
    cancel ? future.cancel() : showProgress(future);
    await future;
  }

  Future<void> zipToFolder(
    String outputFolder,
    String inputZipFilePath, {
    bool cancel = false,
  }) async {
    var future = NativeZip.unzipToDir(inputZipFilePath, outputFolder);
    cancel ? future.cancel() : showProgress(future);
    await future;
  }

  Future<void> addFilesToZip(
    String inputZipFilePath,
    List<String> sourcesInDisk,
    String targetPathInZip,{bool cancel =false}
  ) async {
    ZipFile zip = NativeZip.openZipFile(inputZipFilePath);
    var future = zip.addFiles(sourcesInDisk, targetPathInZip);
    showProgress(future);
   cancel?future.cancel(): await future;
  }

  Future<void> openAndListZip(
    String inputZipFilePath,
    String? whichPath,
    Future<String?> content, {
    bool close = false,
    bool read = false,
    bool write = false,
    bool cancel=false
  }) async {
    ZipFile zip = NativeZip.openZipFile(inputZipFilePath);
    var entries;
    if (close) return zip.close();
    
    if (!read && !write) {
      // List directory entries
      if (whichPath == null) {
        entries = zip.getEntries();
      } else {
        entries = zip.getEntries(path: whichPath, recursive: false);
      }
      
     // _provider.clearSelection();
      
      for (final entry in entries) {
       // _provider(entry);
      }
    } else if (read) {
      content = zip.openRead(whichPath!).transform(utf8.decoder).join();
    } else if (write) {
      String icontent = await content ?? '';
      String targetFileName = p.basename(whichPath!);
      final tmpDir = await getTemporaryDirectory();
      final tfile = p.join(tmpDir.path, targetFileName);
      late File ttfile= File(tfile);
      if(cancel) return await addFilesToZip(inputZipFilePath, [ttfile.path], whichPath,cancel: cancel);
      tcreatedfile() async {
        int i = 0;
        while (i < 2) {
          ttfile = await File(tfile).exists()
              ? await File(tfile).writeAsString(icontent)
              : await File(tfile).create();
          i ++;
        }
      }

      await tcreatedfile();
      await addFilesToZip(inputZipFilePath, [ttfile.path], whichPath);
    }
    
  }
  
    Future<void> renameEntryInZip(
      String inputZipFilePath,
      String oldPath,
      String newPath,
    ) async {
      ZipFile zip = NativeZip.openZipFile(inputZipFilePath);
      await zip.renameEntry(oldPath, newPath);
    }

    Future<void> moveEntriesInZip(
      String inputZipFilePath,
      List<String> entries,
      String toDirPath,
    ) async {
      ZipFile zip = NativeZip.openZipFile(inputZipFilePath);
      final normalizedDir = _normalizeToDirPath(toDirPath);
      await zip.moveEntries(entries, normalizedDir);
    }

    // Extract multiple files or directories from the zip archive to a disk directory
    Future<void> saveFilesFromZip(
      String inputZipFilePath,
      List<String> sourcesInZip,
      String outputDirOnDisk, {
      int? threadCount,
      bool cancel = false,
    }) async {
      ZipFile zip = NativeZip.openZipFile(inputZipFilePath);
      var future = threadCount == null
          ? zip.saveFilesTo(
              sourcesInZip,
              outputDirOnDisk,
            )
          : zip.saveFilesTo(
              sourcesInZip,
              outputDirOnDisk,
              threadCount: threadCount,
            );
      cancel ? future.cancel() : showProgress(future);
      await future;
    }

    // Extract a single file or directory from the zip archive to a disk directory
    Future<void> saveEntryFromZip(
      String inputZipFilePath,
      String sourceInZip,
      String outputDirOnDisk, {
      int? threadCount,
      bool cancel = false,
    }) async {
      ZipFile zip = NativeZip.openZipFile(inputZipFilePath);
      var future = threadCount == null
          ? zip.saveTo(
              sourceInZip,
              outputDirOnDisk,
            )
          : zip.saveTo(
              sourceInZip,
              outputDirOnDisk,
              threadCount: threadCount,
            );
      cancel ? future.cancel() : showProgress(future);
      await future;
    }

    Future<void> moveEntryInZip(
      String inputZipFilePath,
      String entryPath,
      String toDirPath,
    ) async {
      ZipFile zip = NativeZip.openZipFile(inputZipFilePath);
      final normalizedDir = _normalizeToDirPath(toDirPath);
      await zip.moveEntry(entryPath, normalizedDir);
    }

    Future<void> removeEntriesInZip(
      String inputZipFilePath,
      List<String> entries,
    ) async {
      ZipFile zip = NativeZip.openZipFile(inputZipFilePath);
      await zip.removeEntries(entries);
    }

    Future<void> removeEntryInZip(
      String inputZipFilePath,
      String entryPath,
    ) async {
      ZipFile zip = NativeZip.openZipFile(inputZipFilePath);
      await zip.removeEntry(entryPath);
    }

    String _normalizeToDirPath(String dir) {
      if (dir.isEmpty || dir.endsWith('/')) return dir;
      return '$dir/';
    }
  }
