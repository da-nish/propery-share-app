import 'package:flutter_app/app/data/provider/login_provider.dart';
import 'package:flutter_app/app/data/repository/login_repository.dart';
import 'package:get/get.dart';

class RemoteBindings implements Bindings {
  @override
  void dependencies() {
    // Get.lazyPut<ILoginProvider>(() => LoginProvider(), fenix: true);
    // Get.lazyPut<ILoginRepository>(() => LoginRepository(provider: Get.find()),
    // fenix: true);
  }
}
