import '../model_files/tasks/copy_folder.dart';

class SimpleCancellationToken implements CancellationToken {
  bool _cancelled = false;
  @override
  bool get isCancelled => _cancelled;
  @override
  void cancel() => _cancelled = true;
  void throwIfCancelled() { if (_cancelled) throw Exception(); }
}

