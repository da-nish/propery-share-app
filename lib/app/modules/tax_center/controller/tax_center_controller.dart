import 'package:flutter_app/app/core/base/base_controller.dart';
import 'package:flutter_app/app/data/model/pair.dart';
import 'package:flutter_app/app/data/repository/api_repository.dart';
import 'package:flutter_app/app/data/model/report_model.dart';
import 'package:get/get.dart';

class TaxCenterController extends BaseController {
  final RxBool _isLoading = false.obs;
  bool get isLoading => _isLoading.value;
  set isLoading(bool value) {
    _isLoading.value = value;
  }

  final List<Pair<String, String>> fyList = [
    Pair("2020-21", "1"),
    Pair("2021-22", "2"),
    Pair("2022-23", "3"),
  ];

  @override
  Future<void> onInit() async {
    super.onInit();
    await updateRecord();
  }

  void navigateCreateTeam() {
    // Get.toNamed(Routes.createTeam.name, id: 1);
  }

  String get financialYear {
    for (Pair i in fyList) {
      if (i.second == selectedFY) return i.first;
    }
    return "";
  }

  final RxString _selectedFY = "1".obs;
  String get selectedFY => _selectedFY.value;
  set selectedFY(String value) {
    if (selectedFY != value) {
      _selectedFY.value = value;
      updateRecord();
    }
  }

  Future<void> updateRecord() async {
    _displayList.value = null;
    Report? records = apiRecords[selectedFY];
    if (records != null) {
      _displayList.value = records;
      return;
    }

    apiRecords[selectedFY] = await getReport();
    _displayList.value = apiRecords[selectedFY];
    _displayList.refresh();
  }

  Quarter calculateTotal(List<Quarter> list) {
    Quarter total = Quarter(
        name: "Total",
        duration: "",
        income: 0,
        tds: 0,
        distribution: 0,
        isTotalField: true);
    for (Quarter item in list) {
      total.distribution += item.distribution;
      total.income += item.income;
      total.tds += item.tds;
    }
    return total;
  }

  final Map<String, Report?> apiRecords = {};
  final Rxn<Report> _displayList = Rxn<Report>();
  Report? get displayList => _displayList.value;

  final _repository = Get.find<APIService>();
  Future<Report?> getReport() async {
    isLoading = true;
    return await callDataService(_repository.getReport(selectedFY),
        onNetworkError: (String message) {
      isLoading = false;
    }, onSuccess: (Report? response) {
      isLoading = false;

      if (response != null && response.quarter.isNotEmpty) {
        response.quarter.add(calculateTotal(response.quarter));
      }

      return response;
    }, onError: (Exception exception) {
      isLoading = false;
      //(exception as BaseException).message;
    });
  }

  void navigateCreateTournament() {
    // Get.toNamed(Routes.createTournament.name, id: 1);
  }
}
