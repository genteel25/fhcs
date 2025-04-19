// Concrete implementation of ApiResponse
import 'contracts/api_response.dart';

class ApiResponseImpl<T> implements ApiResponse<T> {
  final T? _data;
  final String? _message;
  final dynamic _errors;
  final String? _responseCode;
  final String? count;
  final String? next;
  final String? previous;
  final Map<String, dynamic>? extraData;

  ApiResponseImpl(this._data, this._errors, this._message, this._responseCode,
      {this.count, this.next, this.previous, this.extraData});

  @override
  T? get data => _data;

  @override
  String get responseCode => _responseCode ?? '';

  @override
  String? get message => _message;

  @override
  dynamic get errors => _errors;

  @override
  String? get itemCount => count;

  @override
  String? get nextUrl => next;

  @override
  String? get previousUrl => previous;

  @override
  bool get isSuccess => responseCode == '100';
  @override
  String get defaultErrorMessage => 'an_error_occured';

  @override
  Map<String, dynamic>? get metadata => extraData;

  @override
  String toString() {
    return 'ApiResponseImpl<$T>(${data.toString()})';
  }
}
