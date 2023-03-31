import 'package:flutter_app/app/core/components/app_drawer/app_appdrawer.dart';
import 'package:flutter_app/app/core/components/app_topbar/app_appbar_home.dart';
import 'package:flutter_app/app/core/components/chart/aqua_arc_chart.dart';
import 'package:flutter_app/app/core/components/expanded_tile/app_expandable.dart';
import 'package:flutter_app/app/core/components/expanded_tile/app_expandable_style.dart';
import 'package:flutter_app/app/core/dto/chart_model.dart';
import 'package:flutter_app/app/core/theme/theme.dart';
import 'package:flutter_app/app/core/values/app_assets.dart';
import 'package:flutter_app/app/modules/home/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/app/modules/home/presentation/widget/app_container.dart';
import 'package:flutter_app/app/modules/home/presentation/widget/app_switcher.dart';
import 'package:flutter_app/app/modules/home/presentation/widget/property_card.dart';
import 'package:flutter_app/app/modules/home/presentation/widget/section_title.dart';
import 'package:flutter_app/app/modules/home/presentation/widget/user_card.dart';
import 'package:get/get.dart';
import '../../../../generated/l10n.dart';

enum OrderType { stop, limit, market }

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppTopBarHome(),
      drawer: const AppDrawer(),
      body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          children: [
            const SizedBox(height: 16),
            const UserCard(),
            const SizedBox(height: 24),
            const SectionTitle(title: "Summary"),
            const SizedBox(height: 24),
            // // AppContainer(
            // //   child: SizedBox(height: 200),
            // // ),
            // // AppSwitcher(
            // //   AppSwitcherStyle.fromThemeWithTradeTypesMakeup(
            // //       AppTheme.defaultTheme),
            //   Pair(OrderType.limit, "AA"),
            //   Pair(OrderType.stop, "BB"),
            //   OrderType.limit,
            //   (dynamic update) {
            //     // _bloc!.orderTypeChange(update as OrderType);
            //   },
            //   infoLeft: "A",
            //   infoRight: "B",
            // ),
            Row(
              children: [
                Expanded(
                  child: Column(children: [
                    Text(
                      "Investment",
                      style: AppTextStyle.h5Regular(),
                    ),
                    Text(
                      "4,00,00",
                      style: AppTextStyle.h5Bold(),
                    ),
                  ]),
                ),
                Expanded(
                  child: Column(children: [
                    Text(
                      "Current Investment",
                      style: AppTextStyle.h5Regular(),
                    ),
                    Text(
                      "4,00,00",
                      style: AppTextStyle.h5Bold(),
                    ),
                  ]),
                ),
              ],
            ),
            const SizedBox(height: 24),
            Row(
              children: [
                Expanded(
                  child: Column(children: [
                    Text(
                      "Market Value",
                      style: AppTextStyle.h5Regular(),
                    ),
                    Text(
                      "4,20,00",
                      style: AppTextStyle.h5Bold(),
                    ),
                  ]),
                ),
                Expanded(
                  child: Column(children: [
                    Text(
                      "Rents",
                      style: AppTextStyle.h5Regular(),
                    ),
                    Text(
                      "6,00,00",
                      style: AppTextStyle.h5Bold(),
                    ),
                  ]),
                ),
              ],
            ),
            const SizedBox(height: 24),
            const SectionTitle(
              title: "Rents",
              positionRight: true,
            ),

            const SizedBox(height: 24),
            const SectionTitle(
              title: "Investment Breakup",
            ),
            const SizedBox(height: 24),
            AppContainer(
              child: SizedBox(
                height: 200,
                width: 200,
                child: Stack(
                  alignment: Alignment.topRight,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  children: [
                    Opacity(
                      opacity: 0.5,
                      child: Container(
                        // alignment: Alignment.bottomRight,
                        alignment: Alignment.centerRight,
                        height: 80,
                        width: 80,
                        child: Align(
                          alignment: Alignment.topRight,
                          child: AquaArcChart(
                            [
                              CommonChartModel(1, '3'),
                              CommonChartModel(2, '2'),
                            ],
                            title: "Location",
                            displayLabels: false,
                            arcWidth: 27,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 0,
                      child: Container(
                        // color: Colors.yellow,
                        width: 300,
                        alignment: Alignment.topLeft,
                        height: 180,
                        child: AquaArcChart(
                          title: "Investment\ntype",
                          [
                            CommonChartModel(3, 'Direct'),
                            CommonChartModel(2, 'Fund'),
                          ],
                          arcWidth: 27,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 24),

            const SectionTitle(
              title: "Current Investment",
              positionRight: true,
            ),

            const SizedBox(height: 12),
            // InkWell(
            //     onTap: () {
            //       controller.navigateCreateTournament();
            //     },
            //     child: Text("bsd")),
            AppContainer(
                child: Column(
              children: [
                Row(
                  children: const [
                    Spacer(),
                    Text("Direct"),
                    SizedBox(width: 12),
                    Text("Fund"),
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
                      const SizedBox(width: 8),
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
                      const SizedBox(width: 8),
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
            ))
          ]),
    );
  }
}
