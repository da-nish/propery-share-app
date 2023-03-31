import 'package:get/get.dart';

class RemoteBindings implements Bindings {
  @override
  void dependencies() {
    // Get.lazyPut<ILoginProvider>(() => LoginProvider(), fenix: true);
    // Get.lazyPut<ILoginRepository>(() => LoginRepository(provider: Get.find()),
    // fenix: true);
  }
}
