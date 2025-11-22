import '../model_core/fs_entry.dart';
import '../model_core/fs_entry_union.dart';
import '../model_core/fs_file_data.dart';
/// Typed wrapper for certificate files (SSL/TLS certificates, keys, etc.)
class CertificateFile {
      final FsFile _file;

  CertificateFile(FsEntry entry) : _file = _validateEntry(entry);

  /// Validate that the entry is a file with certificate kind
  static FsFile _validateEntry(FsEntry entry) {
        assert(entry is FsFile, 'CertificateFile must wrap a file entry');
    assert(entry.kind == FileKind.certificate, 
        'CertificateFile must have kind FileKind.certificate, got ${entry.kind}');
    
    return entry as FsFile;
  }

  /// Core identity properties
  String get id => _file.base.id;
  String get path => _file.base.path;
  String get name => _file.base.name;
  String? get extension => _file.base.extension;
  int? get sizeBytes => _file.base.sizeBytes;
  EntryStatus get status => _file.base.status;

  /// File-specific properties
  String? get mime => _file.data.mime;
  StorageLocation get location => _file.data.location;
  
  /// Certificate metadata from FileTypeMeta.unknown
  Map<String, dynamic>? get certificateMeta {
        final typeMeta = _file.data.typeMeta;
    return typeMeta is FileTypeMetaUnknown ? typeMeta.data : null;
  }

  /// Convenience getters for common certificate properties
  DateTime? get notBefore => certificateMeta?['notBefore'] as DateTime?;
  DateTime? get notAfter => certificateMeta?['notAfter'] as DateTime?;
  String? get issuer => certificateMeta?['issuer'] as String?;
  String? get subject => certificateMeta?['subject'] as String?;
  String? get algorithm => certificateMeta?['algorithm'] as String?;
  int? get keySize => certificateMeta?['keySize'] as int?;
  bool? get isExpired => certificateMeta?['isExpired'] as bool?;
  bool? get isSelfSigned => certificateMeta?['isSelfSigned'] as bool?;

  /// Conversion capabilities inspection
  List<FileConversionCapability> get convertibleTo => _file.data.convertibleTo;
  
  /// Check if certificate can be converted to specific format
  bool canConvertTo(FileKind targetKind) =>
      convertibleTo.any((capability) => capability.targetKind == targetKind);

  /// Access to underlying entry for generic operations
  FsEntry get entry => _file;
  FsFile get file => _file;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CertificateFile &&
          runtimeType == other.runtimeType &&
          _file == other._file;

  @override
  int get hashCode => _file.hashCode;

  @override
  String toString() => 'CertificateFile($name)';
}
