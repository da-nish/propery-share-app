// import 'package:dio/dio.dart';

// class RequestHeaderInterceptor extends InterceptorsWrapper {
//   @override
//   void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
//     getCustomHeaders(options).then((customHeaders) {
//       options.headers.addAll(customHeaders);
//       super.onRequest(options, handler);
//     });
//   }

//   Future<Map<String, String>> getCustomHeaders(RequestOptions options) async {
//     var customHeaders = {'content-type': 'application/json'};
//     if (options.path.endsWith("/code/email/send")) {
//       customHeaders.addAll({"x-g-recaptcha": "FHFRnWthOh1OnEwpTeRg"});
//     }

//     return customHeaders;
//   }
// }
