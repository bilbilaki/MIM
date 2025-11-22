
import 'package:du/models/model_core/fs_entry.dart';
import 'package:du/models/model_core/fs_entry_union.dart';
import 'package:du/models/model_core/fs_file_data.dart';

/// Typed wrapper for document files (PDF, DOCX, etc.)
class DocumentItem {
      final FsFile _file;

  DocumentItem(FsEntry entry)
      : _file = entry is FsFile ? entry : throw ArgumentError('DocumentItem requires a file'),
        assert(entry.kind == FileKind.document, 'DocumentItem requires FileKind.document');

  /// Get the underlying file entry
  FsFile get file => _file;

  /// Get the underlying filesystem entry
  FsEntry get entry => _file;

  // Common identity getters
  String get id => _file.base.id;
  String get path => _file.base.path;
  String get name => _file.base.name;
  String? get extension => _file.base.extension;
  int? get sizeBytes => _file.base.sizeBytes;
  EntryStatus get status => _file.base.status;
  EntryAccess? get access => _file.base.access;
  EntryTimestamps? get timestamps => _file.base.timestamps;
  EntryMeta? get meta => _file.base.meta;

  // File-specific getters
  String? get mime => _file.data.mime;
  StorageLocation get location => _file.data.location;
  bool get isContentAvailable => _file.data.isContentAvailable;

  /// Get document-specific metadata
  DocumentMeta? get documentMeta {
        final typeMeta = _file.data.typeMeta;
    return typeMeta is FileTypeMetaDocument ? typeMeta.document : null;
  }

  /// Convenience getters for document metadata
  int? get pageCount => documentMeta?.pageCount;
  String? get language => documentMeta?.language;
  bool? get searchableText => documentMeta?.searchableText;

  /// Get conversion capabilities for this document
  List<FileConversionCapability> get convertibleTo => _file.data.convertibleTo;

  /// Check if document can be converted to a specific kind
  bool canConvertTo(FileKind targetKind) =>
      convertibleTo.any((capability) => capability.targetKind == targetKind);

  /// Check if document can be converted to a specific extension
  bool canConvertToExtension(String extension) =>
      convertibleTo.any((capability) => capability.targetExtensions.contains(extension));

  /// Get conversion capabilities for a specific target kind
  List<FileConversionCapability> getConversionCapabilities(FileKind targetKind) =>
      convertibleTo.where((capability) => capability.targetKind == targetKind).toList();

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DocumentItem && runtimeType == other.runtimeType && _file == other._file;

  @override
  int get hashCode => _file.hashCode;

  @override
  String toString() => 'DocumentItem($name)';
}



// import 'dart:io';

// import 'entries.dart';

// /// Represents a document file
// class DocumentItem extends Entries {
//   final String path;
//   final String name;
//   final int size;
//   final DateTime? modifiedDate;
//   final String extension;
//   final int? pageCount; // Number of pages (for PDFs, etc.)
//   final String? author;
//   final String? title;
//   final bool isFromArchive;

//   DocumentItem({
//     required this.path,
//     required this.name,
//     required this.size,
//     this.modifiedDate,
//     required this.extension,
//     this.pageCount,
//     this.author,
//     this.title,
//     this.isFromArchive = false,
//   });

//   /// Create from FileSystemEntity
//   factory DocumentItem.fromFileSystem(File file, FileStat stat) {
//     final path = file.path;
//     final name = path.split('/').last;
//     final extension = name.split('.').last.toLowerCase();

//     return DocumentItem(
//       path: path,
//       name: name,
//       size: stat.size,
//       modifiedDate: stat.modified,
//       extension: extension,
//       isFromArchive: false,
//     );
//   }

//   /// Create from ZipEntryInfo
//   factory DocumentItem.fromZipEntry(dynamic zipEntry) {
//     final path = zipEntry.path as String;
//     final name = path.split('/').last;
//     final extension = name.split('.').last.toLowerCase();

//     return DocumentItem(
//       path: path,
//       name: name,
//       size: zipEntry.originalSize as int,
//       modifiedDate: zipEntry.modifiedDateTime as DateTime?,
//       extension: extension,
//       isFromArchive: true,
//     );
//   }

//   /// Create from Map
//   factory DocumentItem.fromMap(Map<String, dynamic> map) {
//     return DocumentItem(
//       path: map['path'] as String,
//       name: map['name'] as String,
//       size: map['size'] as int,
//       modifiedDate: map['modifiedDate'] != null
//           ? DateTime.fromMillisecondsSinceEpoch(map['modifiedDate'] as int)
//           : null,
//       extension: map['extension'] as String,
//       pageCount: map['pageCount'] as int?,
//       author: map['author'] as String?,
//       title: map['title'] as String?,
//       isFromArchive: map['isFromArchive'] as bool? ?? false,
//     );
//   }

//   /// Convert to Map
//   Map<String, dynamic> toMap() {
//     return {
//       'path': path,
//       'name': name,
//       'size': size,
//       'modifiedDate': modifiedDate?.millisecondsSinceEpoch,
//       'extension': extension,
//       'pageCount': pageCount,
//       'author': author,
//       'title': title,
//       'isFromArchive': isFromArchive,
//     };
//   }

//   /// Formatted file size
//   String get formattedSize => _formatBytes(size);

//   /// Display title (uses metadata title if available, otherwise filename)
//   String get displayTitle => title ?? name;

//   /// Document type description
//   String get documentType {
//     switch (extension.toLowerCase()) {
//       case 'pdf':
//         return 'PDF Document';
//       case 'doc':
//       case 'docx':
//         return 'Word Document';
//       case 'xls':
//       case 'xlsx':
//         return 'Excel Spreadsheet';
//       case 'ppt':
//       case 'pptx':
//         return 'PowerPoint Presentation';
//       case 'txt':
//         return 'Text Document';
//       case 'rtf':
//         return 'Rich Text Document';
//       case 'odt':
//         return 'OpenDocument Text';
//       case 'ods':
//         return 'OpenDocument Spreadsheet';
//       case 'odp':
//         return 'OpenDocument Presentation';
//       case 'md':
//         return 'Markdown Document';
//       case 'html':
//       case 'htm':
//         return 'HTML Document';
//       case 'xml':
//         return 'XML Document';
//       case 'json':
//         return 'JSON Document';
//       case 'csv':
//         return 'CSV File';
//       default:
//         return 'Document';
//     }
//   }

//   String _formatBytes(int bytes) {
//     if (bytes < 1024) return '$bytes B';
//     if (bytes < 1024 * 1024) return '${(bytes / 1024).toStringAsFixed(1)} KB';
//     if (bytes < 1024 * 1024 * 1024) {
//       return '${(bytes / (1024 * 1024)).toStringAsFixed(1)} MB';
//     }
//     return '${(bytes / (1024 * 1024 * 1024)).toStringAsFixed(1)} GB';
//   }

//   /// Copy with modifications
//   DocumentItem copyWith({
//     String? path,
//     String? name,
//     int? size,
//     DateTime? modifiedDate,
//     String? extension,
//     int? pageCount,
//     String? author,
//     String? title,
//     bool? isFromArchive,
//   }) {
//     return DocumentItem(
//       path: path ?? this.path,
//       name: name ?? this.name,
//       size: size ?? this.size,
//       modifiedDate: modifiedDate ?? this.modifiedDate,
//       extension: extension ?? this.extension,
//       pageCount: pageCount ?? this.pageCount,
//       author: author ?? this.author,
//       title: title ?? this.title,
//       isFromArchive: isFromArchive ?? this.isFromArchive,
//     );
//   }

//   /// Common document extensions
//   static const documentExtensions = {
//     'pdf', 'doc', 'docx', 'xls', 'xlsx', 'ppt', 'pptx', 'txt', 'rtf',
//     'odt', 'ods', 'odp', 'pages', 'numbers', 'key', 'md', 'html', 'htm',
//     'xml', 'json', 'csv', 'log', 'ini', 'cfg', 'conf', 'yaml', 'yml'
//   };

//   /// Check if extension is a document format
//   static bool isDocumentExtension(String ext) {
//     return documentExtensions.contains(ext.toLowerCase());
//   }

//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) return true;
//     return other is DocumentItem && other.path == path;
//   }

//   @override
//   int get hashCode => path.hashCode;

//   @override
//   String toString() => 'DocumentItem(path: $path, name: $name, type: $documentType, size: $formattedSize)';
// }
