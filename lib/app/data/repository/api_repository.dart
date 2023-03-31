import 'package:flutter_app/app/data/model/report_model.dart';
import 'package:flutter_app/app/data/provider/api_provider.dart';

class APIService {
  final APIProvider _apiProvider;
  APIService(this._apiProvider);

  Future<Report?> getReport(String id) async {
    return _apiProvider.getReport(id);
  }
}
