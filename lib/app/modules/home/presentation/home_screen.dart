import 'package:flutter_app/app/core/components/app_drawer/app_appdrawer.dart';
import 'package:flutter_app/app/core/components/app_switcher/swicher.dart';
import 'package:flutter_app/app/core/components/app_topbar/app_appbar_home.dart';
import 'package:flutter_app/app/core/components/chart/aqua_arc_chart.dart';
import 'package:flutter_app/app/core/components/chart/aqua_stacked_bar_chart.dart';
import 'package:flutter_app/app/core/components/expanded_tile/app_expandable.dart';
import 'package:flutter_app/app/core/components/expanded_tile/app_expandable_style.dart';
import 'package:flutter_app/app/core/components/floating_button/floating_button.dart';
import 'package:flutter_app/app/core/components/property_card/property_card.dart';
import 'package:flutter_app/app/core/components/shadow_container/app_container.dart';
import 'package:flutter_app/app/core/components/title_section/section_title.dart';
import 'package:flutter_app/app/core/components/user_card/user_card.dart';
import 'package:flutter_app/app/core/routes/app_pages.dart';
import 'package:flutter_app/app/core/theme/theme.dart';
import 'package:flutter_app/app/data/model/chart_model.dart';
import 'package:flutter_app/app/modules/home/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

enum OrderType { stop, limit, market }

enum InvestType { direct, fund }

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const AppTopBarHome(),
        drawer: const AppDrawer(),
        body: ListView(
            padding: const EdgeInsets.symmetric(horizontal: Dimens.grid12),
            children: [
              const SizedBox(height: Dimens.grid16),
              const UserCard(),
              const SizedBox(height: Dimens.grid24),
              const SectionTitle(title: "Summary"),
              const SizedBox(height: Dimens.grid24),
              Row(
                children: [
                  Expanded(
                      child:
                          _summaryText(title: "Investment", price: "4,20,00")),
                  Expanded(
                      child: _summaryText(
                          title: "Current Investment", price: "4,20,00")),
                ],
              ),
              const SizedBox(height: 24),
              Row(
                children: [
                  Expanded(
                      child: _summaryText(
                          title: "Market Value", price: "4,20,00")),
                  Expanded(
                      child: _summaryText(title: "Rents", price: "6,00,00")),
                ],
              ),
              const SizedBox(height: Dimens.grid24),
              const SectionTitle(
                title: "Rents",
                positionRight: true,
              ),
              const SizedBox(height: Dimens.grid24),
              const AppContainer(
                child: SizedBox(
                    height: Dimens.grid200,
                    child: StackedFillColorBarChart([])),
              ),
              const SizedBox(height: Dimens.grid24),
              const SectionTitle(
                title: "Investment Breakup",
              ),
              const SizedBox(height: Dimens.grid24),
              AppContainer(
                child: SizedBox(
                  height: Dimens.grid200,
                  width: Dimens.grid200,
                  child: Stack(
                    alignment: Alignment.topRight,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    children: [
                      Opacity(
                        opacity: 0.5,
                        child: Container(
                          // alignment: Alignment.bottomRight,
                          height: Dimens.grid80,
                          width: Dimens.grid80,
                          child: AquaArcChart(
                            [
                              CommonChartModel(1, '3'),
                              CommonChartModel(2, '2'),
                            ],
                            title: "Location",
                            displayLabels: false,
                            arcWidth: Dimens.grid28,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        child: Container(
                          // color: Colors.yellow,
                          width: 300,
                          alignment: Alignment.topLeft,
                          height: Dimens.grid180,
                          child: AquaArcChart(
                            title: "Investment\ntype",
                            [
                              CommonChartModel(3, 'Direct'),
                              CommonChartModel(2, 'Fund'),
                            ],
                            arcWidth: Dimens.grid28,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: Dimens.grid24),
              const SectionTitle(
                title: "Current Investment",
                positionRight: true,
              ),
              const SizedBox(height: Dimens.grid12),
              AppContainer(
                  child: Column(
                children: [
                  Row(
                    children: const [
                      Spacer(),
                      AppSwitcher(InvestType.direct),
                    ],
                  ),
                  AppExpandable(
                    onChange: (bool value) {},
                    hideTrailing: true,
                    style: AppExpandableStyle.fromTheme(),
                    title: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Icon(Icons.add_circle_outline_outlined),
                        const SizedBox(width: Dimens.grid8),
                        Text(
                          "Active",
                          style: AppTextStyle.h5Bold(),
                        ),
                        const Spacer(),
                        Text(
                          "0",
                          style: AppTextStyle.h5Bold(),
                        ),
                      ],
                    ),
                    children: const [
                      PropertyCard(),
                    ],
                  ),
                  AppExpandable(
                    onChange: (bool value) {},
                    hideTrailing: true,
                    style: AppExpandableStyle.fromTheme(),
                    title: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Icon(Icons.add_circle_outline_outlined),
                        const SizedBox(width: Dimens.grid8),
                        Text(
                          "In-Progress",
                          style: AppTextStyle.h5Bold(),
                        ),
                        const Spacer(),
                        Text(
                          "0",
                          style: AppTextStyle.h5Bold(),
                        ),
                      ],
                    ),
                    children: const [
                      PropertyCard(),
                    ],
                  )
                ],
              )),
              const SizedBox(height: Dimens.grid40)
            ]),
        floatingActionButton: const AppFloatingButton());
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
