import 'dart:async';
import 'dart:io';

import '../network/exceptions/api_exception.dart';
import '../network/exceptions/app_exception.dart';
import '../network/exceptions/network_exception.dart';
import '../network/exceptions/not_found_exception.dart';
import '../network/exceptions/service_unavailable_exception.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

Exception handleError(String error) {
  if (kDebugMode) {
    print("Generic exception: $error");
  }

  return AppException(message: error);
}

Exception handleDioError(DioError dioError) {
  switch (dioError.type) {
    case DioErrorType.cancel:
      return AppException(message: "Request to API server was cancelled");
    case DioErrorType.connectTimeout:
      return AppException(message: "Connection timeout with API server");
    case DioErrorType.other:
      return NetworkException("There is no internet connection");
    case DioErrorType.receiveTimeout:
      return TimeoutException("Receive timeout in connection with API server");
    case DioErrorType.sendTimeout:
      return TimeoutException("Send timeout in connection with API server");
    case DioErrorType.response:
      return _parseDioErrorResponse(dioError);
  }
}

Exception _parseDioErrorResponse(DioError dioError) {
  int statusCode = dioError.response?.statusCode ?? -1;
  String? status;
  String? serverMessage;

  try {
    if (statusCode == -1 || statusCode == HttpStatus.ok) {}
    //print(dioError.response?.data);
    serverMessage = dioError.response?.data["message"];
  } catch (e) {
    if (kDebugMode) {
      print("$e");
    }
    serverMessage = "Something went wrong. Please try again later.";
  }

  switch (statusCode) {
    case HttpStatus.serviceUnavailable:
      return ServiceUnavailableException("Service Temporarily Unavailable");
    case HttpStatus.notFound:
      return NotFoundException(serverMessage ?? "", status ?? "");
    case HttpStatus.badRequest:
      return NotFoundException(serverMessage ?? "", status ?? "");
    default:
      return ApiException(
          httpCode: statusCode,
          status: status ?? "",
          message: serverMessage ?? "");
  }
}
