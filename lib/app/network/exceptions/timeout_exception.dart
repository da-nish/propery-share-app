import 'package:flutter_app/app/network/exceptions/base_exception.dart';

class TimeoutException extends BaseException {
  TimeoutException(String message) : super(message: message);
}
