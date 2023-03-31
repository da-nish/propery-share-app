import 'package:flutter_app/app/modules/tax_center/controller/tax_center_controller.dart';
import 'package:get/get.dart';

class TaxCenterBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(TaxCenterController());
  }
}
