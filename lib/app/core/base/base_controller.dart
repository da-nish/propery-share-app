import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter_app/app/network/exceptions/app_exception.dart';
import 'package:get/get.dart';

abstract class BaseController extends GetxController {
  /// Network check

  dynamic callDataService<T>(
    Future<T> future, {
    Function(String message)? onNetworkError,
    Function? onStart,
    Function(T response)? onSuccess,
    Function(Exception exception)? onError,
    Function? onComplete,
  }) async {
    Exception? exceptionObj;

    if (onStart != null) onStart();
    try {
      final T response = await future;

      if (onSuccess != null) onSuccess(response);

      if (onComplete != null) onComplete();

      return response;
    } catch (error) {
      exceptionObj = AppException(message: "$error");
      if (kDebugMode) {
        print("Controller>>>>>> error $error");
      }
    }

    if (onError != null) onError(exceptionObj);

    if (onComplete != null) onComplete();
  }
}
