import 'package:get/get.dart';

class LocalSourceBindings implements Bindings {
  @override
  void dependencies() {
    // GetStorage.init();
    // // Get.put<PreferenceManager>(PreferenceManagerImpl());
    // Get.lazyPut<PreferenceManager>(
    //   () => PreferenceManagerImpl(),
    //   fenix: true,
    // );
  }
}
