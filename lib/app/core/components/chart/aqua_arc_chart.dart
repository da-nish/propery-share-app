import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';
import 'package:flutter_app/app/core/theme/theme.dart';
import 'package:flutter_app/app/modules/home/presentation/widget/app_switcher.dart';

typedef ChartModel = Pair<int, String>;

class AquaArcChart extends StatelessWidget {
  final List<ChartModel>? data;
  final double arcWidth;
  final bool displayLabels;
  final Color labelColor;

  final List<Color> activeColors = [
    AppColors.activeGreen,
    AppColors.activeBlue,
  ];

  AquaArcChart(this.data,
      {this.arcWidth = Dimens.grid16,
      this.displayLabels = true,
      this.labelColor = AppColors.dark});

  @override
  Widget build(BuildContext context) {
    if (data == null) return Container();
    return charts.PieChart<Object>([
      charts.Series<ChartModel, int>(
          id: 'Points',
          domainFn: (ChartModel paramData, _) => paramData.first,
          measureFn: (ChartModel paramData, _) => paramData.first,
          data: data!,
          labelAccessorFn: (data, index) {
            return data.second;
            // return arcLabel != null ? arcLabel!(data, index) : "";
          },
          colorFn: (ChartModel paramData, int? index) {
            var originalColor = activeColors[index!];
            return charts.Color(
                r: originalColor.red,
                g: originalColor.green,
                b: originalColor.blue);
          })
    ],
        layoutConfig: charts.LayoutConfig(
          leftMarginSpec: charts.MarginSpec.defaultSpec,
          rightMarginSpec: charts.MarginSpec.defaultSpec,
          topMarginSpec: charts.MarginSpec.defaultSpec,
          bottomMarginSpec: charts.MarginSpec.defaultSpec,
        ),
        animate: true,
        defaultRenderer: charts.ArcRendererConfig(
            arcWidth: 8,
            strokeWidthPx: 0,
            arcRendererDecorators: !displayLabels
                ? []
                : [
                    charts.ArcLabelDecorator(
                        labelPadding: 4,
                        outsideLabelStyleSpec: charts.TextStyleSpec(
                            fontSize: 12,
                            color: charts.Color(
                                r: labelColor.red,
                                g: labelColor.green,
                                b: labelColor.blue)),
                        showLeaderLines: true,
                        labelPosition: charts.ArcLabelPosition.outside)
                  ]));
  }
}
