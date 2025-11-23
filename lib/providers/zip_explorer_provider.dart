import 'dart:async';
import 'dart:io';
import 'package:du/models/model_core/fs_entry_union.dart';
import 'package:flutter/foundation.dart';
import 'package:path/path.dart' as p;
import '../../services/zip_service.dart';
import 'local_explorer_provider.dart';

/// Provider for managing zip file exploration and operations
class ZipExplorerProvider extends ChangeNotifier {
  final ZipService _zipService = ZipService();
  final LocalProvider _localProvider = LocalProvider();
  
  String? _currentZipPath;
  String? _currentPathInZip;
  List<FsEntry> _zipEntries = [];
  bool _isInZipMode = false;
  Map<String, double> _operationProgress = {};
  
  String? get currentZipPath => _currentZipPath;
  String? get currentPathInZip => _currentPathInZip;
  List<FsEntry> get zipEntries => List.unmodifiable(_zipEntries);
  bool get isInZipMode => _isInZipMode;
  Map<String, double> get operationProgress => Map.unmodifiable(_operationProgress);
  
  /// Check if a file is a zip file
  bool isZipFile(String path) {
    final ext = p.extension(path).toLowerCase();
    return ext == '.zip';
  }
  
  /// Enter zip exploration mode by opening a zip file
  Future<bool> enterZipMode(String zipFilePath) async {
    try {
      if (!await File(zipFilePath).exists()) {
        if (kDebugMode) print('Zip file not found: $zipFilePath');
        return false;
      }
      
      _currentZipPath = zipFilePath;
      _currentPathInZip = null; // Root of zip
      _isInZipMode = true;
      
      await _loadZipContents();
      notifyListeners();
      return true;
    } catch (e) {
      if (kDebugMode) print('Error entering zip mode: $e');
      return false;
    }
  }
  
  /// Exit zip exploration mode
  void exitZipMode() {
    _currentZipPath = null;
    _currentPathInZip = null;
    _zipEntries = [];
    _isInZipMode = false;
    notifyListeners();
  }
  
  /// Navigate to a subdirectory within the zip file
  Future<void> navigateIntoZipFolder(String folderPath) async {
    if (!_isInZipMode || _currentZipPath == null) return;
    
    _currentPathInZip = folderPath;
    await _loadZipContents();
    notifyListeners();
  }
  
  /// Navigate up one level in the zip file
  Future<void> navigateUpInZip() async {
    if (!_isInZipMode || _currentPathInZip == null) {
      // Already at root, exit zip mode
      exitZipMode();
      return;
    }
    
    // Go up one directory level
    final parentPath = p.dirname(_currentPathInZip!);
    _currentPathInZip = (parentPath == '.' || parentPath == '/') ? null : parentPath;
    
    await _loadZipContents();
    notifyListeners();
  }
  
  /// Load contents of current path in zip
  Future<void> _loadZipContents() async {
    if (_currentZipPath == null) return;
    
    _zipEntries = [];
    _localProvider.clearSelection();
    
    await _zipService.openAndListZip(
      _currentZipPath!,
      _currentPathInZip,
      Future.value(null),
    );
    
    // The zip service updates the local provider's lists
    // Copy those entries to our local list
    _zipEntries = [
      ..._localProvider.folders,
      ..._localProvider.movies,
      ..._localProvider.audios,
      ..._localProvider.images,
      ..._localProvider.documents,
    ];
  }
  
  /// Read content of a file from zip
  Future<String?> readFileFromZip(String filePath) async {
    if (_currentZipPath == null) return null;
    
    try {
      final completer = Completer<String?>();
      await _zipService.openAndListZip(
        _currentZipPath!,
        filePath,
        completer.future,
        read: true,
      );
      return await completer.future;
    } catch (e) {
      if (kDebugMode) print('Error reading file from zip: $e');
      return null;
    }
  }
  
  /// Write/update content of a file in zip
  Future<bool> writeFileToZip(String filePath, String content) async {
    if (_currentZipPath == null) return false;
    
    try {
      await _zipService.openAndListZip(
        _currentZipPath!,
        filePath,
        Future.value(content),
        write: true,
      );
      await _loadZipContents();
      return true;
    } catch (e) {
      if (kDebugMode) print('Error writing file to zip: $e');
      return false;
    }
  }
  
  /// Extract files from zip to a directory
  Future<bool> extractFromZip({
    required List<String> sourcePaths,
    required String destinationPath,
    Function(double)? onProgress,
  }) async {
    if (_currentZipPath == null) return false;
    
    try {
      final operationId = 'extract_${DateTime.now().millisecondsSinceEpoch}';
      _operationProgress[operationId] = 0.0;
      notifyListeners();
      
      // Start extraction with progress tracking
      await _zipService.saveFilesFromZip(
        _currentZipPath!,
        sourcePaths,
        destinationPath,
      );
      
      _operationProgress[operationId] = 1.0;
      notifyListeners();
      
      // Clean up progress after a delay
      Future.delayed(const Duration(seconds: 2), () {
        _operationProgress.remove(operationId);
        notifyListeners();
      });
      
      return true;
    } catch (e) {
      if (kDebugMode) print('Error extracting from zip: $e');
      return false;
    }
  }
  
  /// Add files to the zip archive
  Future<bool> addFilesToZip({
    required List<String> sourcePaths,
    required String targetPathInZip,
    Function(double)? onProgress,
  }) async {
    if (_currentZipPath == null) return false;
    
    try {
      final operationId = 'add_${DateTime.now().millisecondsSinceEpoch}';
      _operationProgress[operationId] = 0.0;
      notifyListeners();
      
      await _zipService.addFilesToZip(
        _currentZipPath!,
        sourcePaths,
        targetPathInZip,
      );
      
      _operationProgress[operationId] = 1.0;
      notifyListeners();
      
      await _loadZipContents();
      
      // Clean up progress after a delay
      Future.delayed(const Duration(seconds: 2), () {
        _operationProgress.remove(operationId);
        notifyListeners();
      });
      
      return true;
    } catch (e) {
      if (kDebugMode) print('Error adding files to zip: $e');
      return false;
    }
  }
  
  /// Remove entries from zip
  Future<bool> removeFromZip(List<String> entryPaths) async {
    if (_currentZipPath == null) return false;
    
    try {
      await _zipService.removeEntriesInZip(_currentZipPath!, entryPaths);
      await _loadZipContents();
      return true;
    } catch (e) {
      if (kDebugMode) print('Error removing from zip: $e');
      return false;
    }
  }
  
  /// Rename an entry in the zip
  Future<bool> renameInZip(String oldPath, String newPath) async {
    if (_currentZipPath == null) return false;
    
    try {
      await _zipService.renameEntryInZip(_currentZipPath!, oldPath, newPath);
      await _loadZipContents();
      return true;
    } catch (e) {
      if (kDebugMode) print('Error renaming in zip: $e');
      return false;
    }
  }
  
  /// Move entries within the zip
  Future<bool> moveInZip(List<String> entryPaths, String toDirPath) async {
    if (_currentZipPath == null) return false;
    
    try {
      await _zipService.moveEntriesInZip(_currentZipPath!, entryPaths, toDirPath);
      await _loadZipContents();
      return true;
    } catch (e) {
      if (kDebugMode) print('Error moving in zip: $e');
      return false;
    }
  }
  
  /// Create a new zip file from a folder
  Future<bool> createZipFromFolder({
    required String folderPath,
    required String outputZipPath,
    Function(double)? onProgress,
  }) async {
    try {
      final operationId = 'compress_${DateTime.now().millisecondsSinceEpoch}';
      _operationProgress[operationId] = 0.0;
      notifyListeners();
      
      await _zipService.folderToZip(folderPath, outputZipPath);
      
      _operationProgress[operationId] = 1.0;
      notifyListeners();
      
      // Clean up progress after a delay
      Future.delayed(const Duration(seconds: 2), () {
        _operationProgress.remove(operationId);
        notifyListeners();
      });
      
      return true;
    } catch (e) {
      if (kDebugMode) print('Error creating zip from folder: $e');
      return false;
    }
  }
  
  /// Extract entire zip to a folder
  Future<bool> extractZipToFolder({
    required String outputFolderPath,
    Function(double)? onProgress,
  }) async {
    if (_currentZipPath == null) return false;
    
    try {
      final operationId = 'extract_all_${DateTime.now().millisecondsSinceEpoch}';
      _operationProgress[operationId] = 0.0;
      notifyListeners();
      
      await _zipService.zipToFolder(outputFolderPath, _currentZipPath!);
      
      _operationProgress[operationId] = 1.0;
      notifyListeners();
      
      // Clean up progress after a delay
      Future.delayed(const Duration(seconds: 2), () {
        _operationProgress.remove(operationId);
        notifyListeners();
      });
      
      return true;
    } catch (e) {
      if (kDebugMode) print('Error extracting zip to folder: $e');
      return false;
    }
  }
  
  /// Refresh current zip contents
  Future<void> refresh() async {
    if (_isInZipMode && _currentZipPath != null) {
      await _loadZipContents();
    }
  }
}
