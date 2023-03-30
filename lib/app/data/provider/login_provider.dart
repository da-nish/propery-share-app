// import 'dart:async';
// import 'package:flutter_app/app/core/base/base_remote_source.dart';

// abstract class ILoginProvider {
//   Future<dynamic> login(String email, String password);
// }

// class LoginProvider extends BaseRemoteSource implements ILoginProvider {
//   final String _basePath = "http://40.113.171.107:55004";
//   @override
//   Future<dynamic> login(String email, String password) async {
//     // var endpoint = "${DioProvider.baseUrl}${APIEndPoints.users.path}";
//     var endpoint = "$_basePath/token";

//     var dioCall = dioClient.post(endpoint,
//         data: {"userName": email, "password": password, "mode": "default"});

//     try {
//       // return callApiWithErrorParser(dioCall).then((response) =>
//       //     TokenModel.fromJson(response.data as Map<String, dynamic>));
//     } catch (e) {
//       rethrow;
//     }
//   }
// }
