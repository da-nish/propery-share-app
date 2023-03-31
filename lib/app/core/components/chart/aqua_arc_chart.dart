import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';
import 'package:flutter_app/app/core/theme/theme.dart';
import 'package:flutter_app/app/data/model/chart_model.dart';

typedef ChartModel = CommonChartModel;

class AquaArcChart extends StatelessWidget {
  final List<ChartModel>? data;
  final double arcWidth;
  final bool displayLabels;
  final Color labelColor;
  final String title;

  final List<Color> activeColors = [
    AppColors.activeGreen,
    AppColors.activeBlue,
  ];

  AquaArcChart(this.data,
      {super.key,
      this.arcWidth = Dimens.grid16,
      this.displayLabels = true,
      this.title = "",
      this.labelColor = AppColors.dark});

  charts.Color getColor(int index) {
    var originalColor = activeColors[index];
    return charts.Color(
        r: originalColor.red, g: originalColor.green, b: originalColor.blue);
  }

  charts.Color convertColor(Color originalColor) {
    return charts.Color(
        r: originalColor.red, g: originalColor.green, b: originalColor.blue);
  }

  @override
  Widget build(BuildContext context) {
    if (data == null) return Container();
    return Stack(children: [
      charts.PieChart<Object>([
        charts.Series<ChartModel, String>(
            id: 'Points',
            domainFn: (ChartModel paramData, _) => paramData.label,
            measureFn: (ChartModel paramData, _) => paramData.value,
            data: data!,
            labelAccessorFn: (data, index) {
              return data.label;
              // return arcLabel != null ? arcLabel!(data, index) : "";
            },
            colorFn: (ChartModel paramData, int? index) {
              return getColor(index!);
            })
      ],
          defaultInteractions: false,
          behaviors: !displayLabels
              ? []
              : [
                  charts.DatumLegend(
                    showMeasures: true,
                    position: charts.BehaviorPosition.bottom,
                    desiredMaxColumns: 4,
                    legendDefaultMeasure: charts.LegendDefaultMeasure.none,
                  ),
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
              startAngle: 40,
              arcRendererDecorators: !displayLabels
                  ? []
                  : [
                      charts.ArcLabelDecorator(
                          leaderLineColor: getColor(0),
                          labelPadding: 4,
                          outsideLabelStyleSpec: charts.TextStyleSpec(
                              fontSize: 12,
                              color: charts.Color(
                                  r: labelColor.red,
                                  g: labelColor.green,
                                  b: labelColor.blue)),
                          showLeaderLines: true,
                          labelPosition: charts.ArcLabelPosition.outside)
                    ])),
      Center(
        child: Positioned(
          // right: 0,
          // bottom: 0,
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: AppTextStyle.h7Bold(),
          ),
        ),
      )
    ]);
  }
}
