import 'package:flutter_app/app/data/repository/api_repository.dart';
import 'package:flutter_app/app/data/provider/api_provider.dart';
import 'package:get/get.dart';

class InitialBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<APIProvider>(APIProvider());
    Get.put<APIService>(APIService(Get.find<APIProvider>()));
  }
}
