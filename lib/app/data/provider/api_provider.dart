import 'package:flutter_app/app/core/base/base_remote_source.dart';
import 'package:flutter_app/app/data/model/report_model.dart';

class APIProvider extends BaseRemoteSource {
  Future<Report> getReport(String id) async {
    dynamic api = dioClient.get("/report/$id");

    try {
      return callApiWithErrorParser(api).then(
          (response) => Report.fromJson(response.data as Map<String, dynamic>));
    } catch (e) {
      rethrow;
    }
  }
}
