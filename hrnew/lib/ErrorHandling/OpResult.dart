sealed class OpResult {}

class successed<T> extends OpResult {
  final T? result;

  successed({required this.result});
}

class OpFailed<T> extends OpResult {
  final T? result;
  final String? msg;
  final StackTrace? stacktrace;

  OpFailed({this.result, this.msg, this.stacktrace});
}
