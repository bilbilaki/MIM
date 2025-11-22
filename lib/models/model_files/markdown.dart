
import '../model_core/fs_entry.dart';
import '../model_core/fs_entry_union.dart';
import '../model_core/fs_file_data.dart';

/// Typed wrapper for Markdown files
class MarkdownFile {
      final FsFile _file;

  MarkdownFile._(this._file);

  /// Create a MarkdownFile from FsEntry with validation
  factory MarkdownFile.fromEntry(FsEntry entry) {
        if (entry is! FsFile) {
          throw ArgumentError('MarkdownFile must wrap a file, not a folder');
    }
    if (entry.kind != FileKind.markdown) {
          throw ArgumentError('MarkdownFile must have kind FileKind.markdown');
    }
    return MarkdownFile._(entry);
  }

  /// Create a MarkdownFile directly from FsFile with validation
  factory MarkdownFile.fromFile(FsFile file) {
        if (file.kind != FileKind.markdown) {
          throw ArgumentError('MarkdownFile must have kind FileKind.markdown');
    }
    return MarkdownFile._(file);
  }

  // Core identity delegates
  String get id => _file.base.id;
  String get path => _file.base.path;
  String get name => _file.base.name;
  String? get extension => _file.base.extension;
  int? get sizeBytes => _file.base.sizeBytes;
  EntryStatus get status => _file.base.status;
  EntryAccess? get access => _file.base.access;
  EntryTimestamps? get timestamps => _file.base.timestamps;
  EntryMeta? get meta => _file.base.meta;

  // File-specific delegates
  StorageLocation get location => _file.data.location;
  String? get mime => _file.data.mime;
  bool get isContentAvailable => _file.data.isContentAvailable;

  /// Underlying file entry
  FsFile get file => _file;

  /// Underlying entry (for generic operations)
  FsEntry get entry => _file;

  /// Check if this markdown file can be converted to the specified target kind
  bool canConvertTo(FileKind targetKind) {
        return _file.data.convertibleTo.any((capability) => capability.targetKind == targetKind);
  }

  /// Get conversion capabilities for this markdown file
  List<FileConversionCapability> get conversionCapabilities => 
      _file.data.convertibleTo;

  /// Check if this markdown can be converted to PDF
  bool get canConvertToPdf => canConvertTo(FileKind.document);

  /// Check if this markdown can be converted to HTML
  bool get canConvertToHtml => _file.data.convertibleTo.any((capability) =>
      capability.targetExtensions.contains('html'));

  /// Check if this markdown can be converted to plain text
  bool get canConvertToText => _file.data.convertibleTo.any((capability) =>
      capability.targetKind == FileKind.document && 
      capability.targetExtensions.contains('txt'));
}