// import 'package:aqua/data/dto/match_points_index.dart';
// import 'package:aqua/generated/l10n.dart';
// import 'package:aqua/theme/app_colors.dart';
// import 'package:aqua/theme/app_text_style.dart';
// import 'package:flutter/material.dart';
// import 'package:syncfusion_flutter_charts/charts.dart';

// class MatchChart extends StatefulWidget {
//   final List<MatchPointsIndex> chartData;
//   const MatchChart({required this.chartData, Key? key}) : super(key: key);

//   @override
//   State<MatchChart> createState() => _MatchChartState();
// }

// class _MatchChartState extends State<MatchChart> {
//   final List<ChartData> chartData = [];
//   @override
//   void initState() {
//     super.initState();

//     for (MatchPointsIndex item in widget.chartData) {
//       chartData
//           .add(ChartData(item.minutesPlayed.toString(), item.indexPoints!));
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: Center(
//             child: Container(
//                 child: SfCartesianChart(
//                     plotAreaBorderWidth: 0,
//                     primaryXAxis: CategoryAxis(
//                       title: AxisTitle(
//                           text: 'Minutes Played',
//                           textStyle: AppTextStyle.h8Medium(
//                               color: AppColors.textSecondary)),
//                       axisLine: const AxisLine(width: 0),
//                       majorGridLines: const MajorGridLines(width: 0),
//                       majorTickLines: const MajorTickLines(size: 0),
//                       borderWidth: 0,
//                     ),
//                     primaryYAxis: NumericAxis(
//                         title: AxisTitle(
//                             text: 'Index Points',
//                             textStyle: AppTextStyle.h8Medium(
//                                 color: AppColors.textSecondary)),
//                         axisLine: const AxisLine(width: 0),
//                         interval: 5,
//                         labelFormat: '{value}',
//                         majorGridLines: const MajorGridLines(width: 0),
//                         majorTickLines: const MajorTickLines(size: 0)),
//                     title: ChartTitle(
//                         text: S.of(context).performanceChart,
//                         alignment: ChartAlignment.near,
//                         textStyle:
//                             AppTextStyle.h6Bold(color: AppColors.textPrimary)),
//                     backgroundColor: AppColors.darkGrey,
//                     selectionGesture: ActivationMode.singleTap,
//                     axes: [],
//                     tooltipBehavior: TooltipBehavior(
//                       enable: true,
//                       header: "Points",
//                       builder: (data, point, series, pointIndex, seriesIndex) {
//                         return Container(
//                           height: 24,
//                           width: 42,
//                           decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(4),
//                               gradient: LinearGradient(
//                                   colors: AppColors.buttonGardient)),
//                           child: Center(
//                             child: Text(
//                               "2",
//                               style: AppTextStyle.h5Medium(),
//                             ),
//                           ),
//                         );
//                       },
//                     ),
//                     series: <CartesianSeries>[
//                       LineSeries<ChartData, String>(
//                         dataSource: chartData,
//                         trendlines: [
//                           Trendline(
//                             color: AppColors.activeGreen,
//                             width: 1.1,
//                           )
//                         ],
//                         color: AppColors.purple,
//                         legendIconType: LegendIconType.circle,
//                         selectionBehavior: SelectionBehavior(
//                           toggleSelection: true,
//                         ),
//                         width: 1.1,

//                         // markerSettings: MarkerSettings(
//                         //     isVisible: true,
//                         //     borderWidth: 2,
//                         //     borderColor: AppColors.backgroundSelected,
//                         //     color: AppColors.activeBlue),
//                         xValueMapper: (ChartData s, _) => s.x,
//                         yValueMapper: (ChartData s, _) => s.y,
//                         // enableTooltip: true,
//                       ),
//                       // LineSeries<ChartData, String>(
//                       //   dataSource: chartData1,
//                       //   width: 1.1,

//                       //   color: AppColors.activeGreen,
//                       //   legendIconType: LegendIconType.circle,

//                       //   markerSettings: MarkerSettings(
//                       //       isVisible: false,
//                       //       borderWidth: 0,
//                       //       color: AppColors.activeBlue),
//                       //   xValueMapper: (ChartData s, _) => s.x,
//                       //   yValueMapper: (ChartData s, _) => s.y,
//                       //   // enableTooltip: true,
//                       // ),
//                     ]))));
//   }
// }

// class ChartData {
//   ChartData(this.x, this.y);
//   final String x;
//   final double? y;
// }
