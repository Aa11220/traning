sealed class OpResult {}

class successed<T> extends OpResult {
  final T? result;

  successed({required this.result});
}

class Failed<T> extends OpResult {
  final T? result;
  final String? msg;
  final StackTrace? stacktrace;

  Failed({required this.result, required this.msg, required this.stacktrace});
}
