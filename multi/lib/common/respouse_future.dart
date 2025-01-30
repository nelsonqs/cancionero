enum ResponseFutureStatus {
  error,
  success,
  exist,
  exception,
  process,
  update,
  required,
  empty
}

class ResponseFuture {
  bool state;
  String message;
  Object? object;
  ResponseFutureStatus status;
  ResponseFuture(this.state, this.message, this.status, {this.object});
}
