// import 'dart:math';

// import 'package:aqua/data/dto/player.dart';
// import 'package:aqua/generated/l10n.dart';
// import 'package:charts_flutter/flutter.dart' as charts;
// import 'package:charts_flutter/flutter.dart';
// import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';

// class StackedAreaCustomColorLineChart extends StatelessWidget {
//   final List<charts.Series> seriesList;
//   final bool? animate;

//   StackedAreaCustomColorLineChart(this.seriesList, {this.animate});

//   factory StackedAreaCustomColorLineChart.withRandomData() {
//     return StackedAreaCustomColorLineChart(_createRandomData());
//   }

//   static List<charts.Series<LinearSales, num?>> _createRandomData() {
//     final random = Random();

//     var myFakeMobileData = [
//       LinearSales(0, random.nextInt(25)),
//       LinearSales(1, random.nextInt(25)),
//       LinearSales(2, random.nextInt(25)),
//       LinearSales(3, random.nextInt(25)),
//       LinearSales(4, random.nextInt(25)),
//       LinearSales(5, random.nextInt(25)),
//       LinearSales(6, random.nextInt(25)),
//       LinearSales(7, random.nextInt(25)),
//       LinearSales(8, random.nextInt(25)),
//       LinearSales(9, random.nextInt(25)),
//       LinearSales(10, random.nextInt(25)),
//       LinearSales(11, random.nextInt(25)),
//       LinearSales(12, random.nextInt(25)),
//       LinearSales(13, random.nextInt(25)),
//       LinearSales(14, random.nextInt(25)),
//       LinearSales(15, random.nextInt(25)),
//       LinearSales(16, random.nextInt(25)),
//       LinearSales(17, random.nextInt(25)),
//       LinearSales(18, random.nextInt(25)),
//       LinearSales(19, random.nextInt(25)),
//       LinearSales(20, random.nextInt(25)),
//       LinearSales(21, random.nextInt(25)),
//       LinearSales(22, random.nextInt(25)),
//       LinearSales(23, random.nextInt(25)),
//       LinearSales(24, random.nextInt(25)),
//       LinearSales(25, random.nextInt(25)),
//       LinearSales(26, random.nextInt(25)),
//       LinearSales(27, random.nextInt(25)),
//       LinearSales(28, random.nextInt(25)),
//       LinearSales(29, random.nextInt(25)),
//       LinearSales(30, random.nextInt(25)),
//       LinearSales(31, random.nextInt(25)),
//       LinearSales(32, random.nextInt(25)),
//       LinearSales(33, random.nextInt(25)),
//       LinearSales(34, random.nextInt(25)),
//       LinearSales(35, random.nextInt(25)),
//       LinearSales(36, random.nextInt(25)),
//       LinearSales(37, random.nextInt(25)),
//       LinearSales(38, random.nextInt(25)),
//       LinearSales(39, random.nextInt(25)),
//       LinearSales(40, random.nextInt(25)),
//       LinearSales(41, random.nextInt(25)),
//       LinearSales(42, random.nextInt(25)),
//       LinearSales(43, random.nextInt(25)),
//       LinearSales(44, random.nextInt(25)),
//       LinearSales(45, random.nextInt(25)),
//       LinearSales(46, random.nextInt(25)),
//       LinearSales(47, random.nextInt(25)),
//       LinearSales(48, random.nextInt(25)),
//       LinearSales(49, random.nextInt(25)),
//       LinearSales(50, random.nextInt(25)),
//     ];

//     return [
//       charts.Series<LinearSales, int?>(
//         id: 'Mobile',
//         colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
//         domainFn: (LinearSales sales, _) => sales.year,
//         measureFn: (LinearSales sales, _) => sales.sales,
//         data: myFakeMobileData,
//       ),
//     ];
//   }

//   @override
//   Widget build(BuildContext context) {
//     return charts.LineChart(seriesList as List<Series<dynamic, num>>,
//         defaultRenderer:
//             charts.LineRendererConfig(includeArea: true, stacked: true),
//         animate: animate);
//   }
// }

// class LinearSales {
//   int? year;
//   int? sales;

//   LinearSales(year, sales);
// }

// class AquaChart extends StatelessWidget {
//   final List<charts.Series<PlayerPriceData, DateTime>> seriesList;

//   AquaChart.withPlayerData(_playerPrices)
//       : seriesList = [
//           charts.Series<PlayerPriceData, DateTime>(
//             id: 'Cost',
//             colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
//             domainFn: (PlayerPriceData row, _) => DateTime.parse(row.priceDate!),
//             measureFn: (PlayerPriceData row, _) => row.assetPrice,
//             data: _playerPrices,
//           )
//         ];

//   @override
//   Widget build(BuildContext context) => charts.TimeSeriesChart(seriesList,
//       defaultRenderer: charts.LineRendererConfig(
//           includeLine: true,
//           includeArea: true,
//           stacked: true,
//           includePoints: true),
//       domainAxis: charts.DateTimeAxisSpec(
//           renderSpec: charts.SmallTickRendererSpec(), showAxisLine: true),
//       primaryMeasureAxis: charts.NumericAxisSpec(
//           tickProviderSpec:
//               charts.BasicNumericTickProviderSpec(zeroBound: false),
//           tickFormatterSpec:
//               charts.BasicNumericTickFormatterSpec.fromNumberFormat(
//                   NumberFormat.compactCurrency(
//                       decimalDigits: 0, symbol: S.of(context).currencySign)),
//           renderSpec: charts.GridlineRendererSpec(
//               lineStyle: charts.LineStyleSpec(
//             dashPattern: [1, 10],
//           ))),
//       layoutConfig: charts.LayoutConfig(
//         leftMarginSpec: charts.MarginSpec.defaultSpec,
//         rightMarginSpec: charts.MarginSpec.defaultSpec,
//         topMarginSpec: charts.MarginSpec.defaultSpec,
//         bottomMarginSpec: charts.MarginSpec.defaultSpec,
//       ),
//       animate: true);
// }
