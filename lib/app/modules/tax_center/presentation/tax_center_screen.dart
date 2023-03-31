import 'package:flutter_app/app/core/components/app_drawer/app_appdrawer.dart';
import 'package:flutter_app/app/core/components/app_topbar/app_appbar_home.dart';
import 'package:flutter_app/app/core/components/floating_button/floating_button.dart';
import 'package:flutter_app/app/core/components/shadow_container/app_container.dart';
import 'package:flutter_app/app/core/components/title_section/section_title.dart';
import 'package:flutter_app/app/core/components/user_card/user_card.dart';
import 'package:flutter_app/app/core/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/app/modules/tax_center/controller/tax_center_controller.dart';
import 'package:flutter_app/app/modules/tax_center/presentation/widget/filter_bottom_sheet.dart';
import 'package:flutter_app/app/modules/tax_center/presentation/widget/report_item.dart';
import 'package:get/get.dart';

class TaxCenterScreen extends GetView<TaxCenterController> {
  const TaxCenterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppTopBarHome(),
      drawer: const AppDrawer(),
      body: Stack(children: [
        ListView(
          padding: const EdgeInsets.symmetric(horizontal: Dimens.grid12),
          children: [
            const SizedBox(height: Dimens.grid16),
            const UserCard(),
            const SizedBox(height: Dimens.grid24),
            const SectionTitle(title: "Tax center"),
            const SizedBox(height: Dimens.grid24),
            Row(
              children: [
                Expanded(
                    child: _summaryText(title: "Investment", price: "4,20,00")),
                Expanded(
                    child: _summaryText(
                        title: "Current Investment", price: "4,20,00")),
              ],
            ),
            const SizedBox(height: Dimens.grid24),
            Row(
              children: [
                Expanded(
                    child:
                        _summaryText(title: "Market Value", price: "4,20,00")),
                Expanded(child: _summaryText(title: "Rents", price: "6,00,00")),
              ],
            ),
            const SizedBox(height: Dimens.grid24),
            AppContainer(
                child: Column(
              children: [
                const SizedBox(height: Dimens.grid20),
                Obx(() => Text("FY ${controller.financialYear}",
                    style: AppTextStyle.h4Bold(color: AppColors.blue))),
                const SizedBox(height: Dimens.grid20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text("Income",
                        style:
                            AppTextStyle.h6Bold(color: AppColors.greyInactive)),
                    Text("TDS",
                        style:
                            AppTextStyle.h6Bold(color: AppColors.greyInactive)),
                    Text("Distribution",
                        style:
                            AppTextStyle.h6Bold(color: AppColors.greyInactive)),
                  ],
                ),
                Obx(
                  () => controller.isLoading
                      ? const CircularProgressIndicator()
                      : Column(
                          children: List.generate(
                              controller.displayList?.quarter.length ?? 0,
                              (index) => ReportItem(
                                  item: controller
                                      .displayList?.quarter[index])).toList()),
                )
              ],
            )),
            const SizedBox(height: Dimens.grid100),
          ],
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: SafeArea(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    Get.bottomSheet(const FilterBottomSheet(),

                            // settings: RouteSettings(
                            //     name: Routes.moveTo.name,
                            //     arguments: {
                            //       // AppValues.argTaskItem: task,
                            //       // AppValues.argShouldPerformAction: true
                            //     }),
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(Dimens.grid10),
                                topRight: Radius.circular(Dimens.grid10),
                              ),
                            ),
                            isScrollControlled: true,
                            backgroundColor: AppColors.white)
                        .whenComplete(
                      () {},
                    );
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: Dimens.grid2, horizontal: Dimens.grid8),
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      border:
                          Border.all(width: .6, color: AppColors.activeBlue),
                      borderRadius: BorderRadius.circular(Dimens.grid20),
                      boxShadow: [
                        BoxShadow(
                          color: AppColors.blueShade.withOpacity(0.2),
                          spreadRadius: 1,

                          blurRadius: 8,
                          offset:
                              const Offset(1, 4), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Row(children: [
                      const Icon(Icons.filter_alt_outlined,
                          color: AppColors.blue),
                      Text(
                        "Filter",
                        style: AppTextStyle.h5Regular(color: AppColors.blue),
                      ),
                    ]),
                  ),
                )
              ],
            ),
          ),
        )
      ]),
      floatingActionButton: const AppFloatingButton(),
    );
  }

  _summaryText({required String title, required String price}) {
    return Column(children: [
      Text(
        title,
        style: AppTextStyle.h5Regular(),
      ),
      Text(
        price,
        style: AppTextStyle.h5Bold(),
      ),
    ]);
  }
}
