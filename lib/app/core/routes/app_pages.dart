import 'package:flutter_app/app/modules/home/binding/home_binding.dart';
import 'package:flutter_app/app/modules/home/presentation/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/app/modules/tax_center/binding/tax_center_binding.dart';
import 'package:flutter_app/app/modules/tax_center/presentation/tax_center_screen.dart';
import 'package:get/get.dart';
part 'app_routes.dart';

class AppPages {
  static const initial = Routes.home;

  static final routes = [
    GetPage<MaterialPageRoute>(
      name: Routes.home.name,
      page: () => const HomeScreen(),
      binding: HomeBinding(),
    ),
    GetPage<MaterialPageRoute>(
      name: Routes.taxCenter.name,
      page: () => const TaxCenterScreen(),
      binding: TaxCenterBinding(),
    ),
  ];
}
