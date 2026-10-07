abstract class DataState<T> {
  final T? data;
  final String? message;

  new({this.data, this.message});
}

class DataSuccess<T> extends DataState<T> {
  new(T data) : super(data: data, message: null);
}

class DataError<T> extends DataState<T> {
  new(String message) : super(data: null, message: message);
}
