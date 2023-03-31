import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter_app/app/core/theme/app_colors.dart';

class StackedFillColorBarChart extends StatelessWidget {
  final List<charts.Series<PlayerParamsData, String>> seriesList;
  final bool animate;

  const StackedFillColorBarChart(this.seriesList,
      {super.key, this.animate = true});

  factory StackedFillColorBarChart.withSampleData() {
    return StackedFillColorBarChart(
      createSampleData(),
      // Disable animations for image tests.
      animate: false,
    );
  }

  static charts.Color convertColor(Color originalColor) {
    return charts.Color(
        r: originalColor.red, g: originalColor.green, b: originalColor.blue);
  }

  @override
  Widget build(BuildContext context) {
    return charts.BarChart(
      createSampleData(),
      animate: animate,
      // Configure a stroke width to enable borders on the bars.
      defaultRenderer: charts.BarRendererConfig(
          maxBarWidthPx: 10,
          groupingType: charts.BarGroupingType.stacked,
          strokeWidthPx: 2.0),
    );
  }

  /// Create series list with multiple series
  static List<charts.Series<PlayerParamsData, String>> createSampleData() {
    // final desktopSalesData = [
    //   PlayerParamsData('2014', 5),
    //   PlayerParamsData('2015', 25),
    //   PlayerParamsData('2016', 100),
    //   PlayerParamsData('2017', 75),
    // ];

    final filledBars = [
      PlayerParamsData('2014', 10),
      PlayerParamsData('2015', 10),
      PlayerParamsData('2016', 10),
      PlayerParamsData('2017', 10),
      PlayerParamsData('2018', 10),
      PlayerParamsData('2019', 10),
    ];

    final hollowBars = [
      PlayerParamsData('2014', 20),
      PlayerParamsData('2015', 25),
      PlayerParamsData('2016', 30),
      PlayerParamsData('2017', 25),
      PlayerParamsData('2018', 10),
      PlayerParamsData('2019', 10),
    ];

    return [
      // Blue bars with a lighter center color.
      // charts.Series<PlayerParamsData, String>(
      //   id: 'Desktop',
      //   domainFn: (PlayerParamsData sales, _) => sales.year,
      //   measureFn: (PlayerParamsData sales, _) => sales.sales,
      //   data: desktopSalesData,
      //   colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
      //   fillColorFn: (_, __) =>
      //       charts.MaterialPalette.blue.shadeDefault.lighter,
      // ),

      charts.Series<PlayerParamsData, String>(
        id: 'filled',
        measureFn: (PlayerParamsData sales, _) => sales.sales,
        data: filledBars,
        strokeWidthPxFn: (datum, index) => 2,
        colorFn: (data, __) {
          if (data.sales >= 5) {
            return convertColor(AppColors.activeBlue);
          }
          return convertColor(AppColors.activeBlue);
        },
        // outsideLabelStyleAccessorFn: (datum, index) => ,

        domainFn: (PlayerParamsData sales, _) => sales.year,
      ),
      // Hollow green bars.
      charts.Series<PlayerParamsData, String>(
        id: 'transparent',
        domainFn: (PlayerParamsData sales, _) => sales.year,
        measureFn: (PlayerParamsData sales, _) => sales.sales,
        data: hollowBars,
        radiusPxFn: (datum, index) => 5,
        colorFn: (_, __) => convertColor(AppColors.activeGreen),
        fillColorFn: (_, __) => convertColor(AppColors.activeGreen),
      ),
    ];
  }
}

/// Sample ordinal data type.
class PlayerParamsData {
  final String year;
  final int sales;

  PlayerParamsData(this.year, this.sales);
}
