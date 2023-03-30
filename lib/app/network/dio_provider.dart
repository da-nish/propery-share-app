// import 'package:dio/dio.dart';
// import 'package:flutter_app/app/network/request_headers.dart';
// import 'package:flutter/foundation.dart';

// import 'pretty_dio_logger.dart';

// class DioProvider {
//   static const String baseUrl = 'http://20.108.45.208:7061';

//   static Dio? _instance;

//   static const int _maxLineWidth = 90;
//   static final _prettyDioLogger = PrettyDioLogger(
//       requestHeader: true,
//       requestBody: true,
//       responseBody: false, //kDebugMode,
//       responseHeader: false,
//       error: true,
//       compact: true,
//       maxWidth: _maxLineWidth);

//   static final BaseOptions _options = BaseOptions(
//     baseUrl: baseUrl,
//     connectTimeout: 60 * 1000,
//     receiveTimeout: 60 * 1000,
//     headers: {"x-cid": "fbls"},
//   );

//   static Dio get httpDio {
//     if (_instance == null) {
//       _instance = Dio(_options);

//       if (kDebugMode) {
//         _instance!.interceptors.add(_prettyDioLogger);
//       }

//       return _instance!;
//     } else {
//       _instance!.interceptors.clear();

//       if (kDebugMode) {
//         _instance!.interceptors.add(_prettyDioLogger);
//       }

//       return _instance!;
//     }
//   }

//   ///returns a Dio client with Access token in header
//   static Dio get tokenClient {
//     _addInterceptors();

//     return _instance!;
//   }

//   ///returns a Dio client with Access token in header
//   ///Also adds a token refresh interceptor which retry the request when it's unauthorized
//   static Dio get dioWithHeaderToken {
//     _addInterceptors();

//     return _instance!;
//   }

//   static _addInterceptors() {
//     _instance ??= httpDio;
//     _instance!.interceptors.clear();
//     _instance!.interceptors.add(RequestHeaderInterceptor());
//     _instance!.interceptors.add(_prettyDioLogger);
//   }

//   DioProvider.setContentTypeApplicationJson() {
//     _instance?.options.contentType = "application/json";
//   }
// }
