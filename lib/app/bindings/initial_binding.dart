import 'package:flutter_app/app/bindings/local_source_bindings.dart';
import 'package:flutter_app/app/bindings/remote_bindings.dart';
import 'package:flutter_app/app/network/network_controller.dart';
import 'package:get/get.dart';

class InitialBinding implements Bindings {
  @override
  void dependencies() {
    // Get.lazyPut<INetworkInfoProvider>(() => NetworkController(), fenix: true);

    LocalSourceBindings().dependencies();
    RemoteBindings().dependencies();
  }
}
