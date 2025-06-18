import 'package:easy_localization/easy_localization.dart';

import 'contracts/failure.dart';

class ValidationFailure implements Failure {
  late String message;
  ValidationFailure(this.message);

  @override
  String failureMessage() {
    return message;
  }
}

class CancelFailure implements Failure {
  @override
  String failureMessage() {
    return "Request to server was cancelled";
  }
}

class ServerFailure implements Failure {
  @override
  String failureMessage() {
    return "Something went wrong and your request could not be completed".tr();
  }
}

class InternetFailure implements Failure {
  @override
  String failureMessage() {
    return "No internet connection".tr();
  }
}

class BadResponseFailure implements Failure {
  final String? message;

  BadResponseFailure({this.message});

  @override
  String failureMessage() {
    return message ?? "Bad response from the server";
  }
}

class ConnectionTimeOutFailure implements Failure {
  @override
  String failureMessage() {
    return "Connect timeout with server".tr();
  }
}

class ReceivedTimeOutFailure implements Failure {
  @override
  String failureMessage() {
    return "";
  }
}

class SendTimeOutFailure implements Failure {
  @override
  String failureMessage() {
    return "Send timeout in connection to server";
  }
}

class ConnectionFailure implements Failure {
  @override
  String failureMessage() {
    return "Connection to server failed due to internet connection".tr();
  }
}

class BadCertificateFailure implements Failure {
  @override
  String failureMessage() {
    return "Bad Certificate";
  }
}

class BadRequestFailure implements Failure {
  @override
  String failureMessage() {
    return "";
  }
}
