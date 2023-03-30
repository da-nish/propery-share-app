// import 'package:flutter_app/app/data/local/preference/preference_manager_impl.dart';

// import '../data/local/preference/preference_manager.dart';
// import '../network/dio_provider.dart';
// import 'package:dio/dio.dart';
// import 'package:get/get.dart' as getx;

// class DioRequestRetrier {
//   final dioClient = DioProvider.tokenClient;
//   final RequestOptions requestOptions;

//   final PreferenceManager _preferenceManager = getx.Get.find();

//   DioRequestRetrier({required this.requestOptions});

//   Future<Response<T>> retry<T>() async {
//     var header = await getCustomHeaders();

//     return await dioClient.request(
//       requestOptions.path,
//       cancelToken: requestOptions.cancelToken,
//       data: requestOptions.data,
//       queryParameters: requestOptions.queryParameters,
//       onReceiveProgress: requestOptions.onReceiveProgress,
//       onSendProgress: requestOptions.onSendProgress,
//       options: Options(headers: header, method: requestOptions.method),
//     );
//   }

//   Future<Map<String, String>> getCustomHeaders() async {
//     final String accessToken =
//         _preferenceManager.getValue(PreferenceManagerImpl.userAuthToken);
//     var customHeaders = {'content-type': 'application/json'};
//     if (accessToken.trim().isNotEmpty) {
//       customHeaders.addAll({
//         'Authorization': "Bearer $accessToken",
//       });
//     }

//     return customHeaders;
//   }
// }
