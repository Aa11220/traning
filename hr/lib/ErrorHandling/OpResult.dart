sealed class OpResult {}

class successed<T> extends OpResult {
  final T? result;

  successed({required this.result});
}

class Failed extends OpResult {
  final String? msg;
  final StackTrace? stacktrace;

  Failed({required this.msg, required this.stacktrace});
}
