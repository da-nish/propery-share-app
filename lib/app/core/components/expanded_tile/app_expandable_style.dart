import 'package:flutter/material.dart';
import 'package:flutter_app/app/core/theme/theme.dart';

class AppExpandableStyle {
  final double height;
  final double width;
  final Color activeColor;
  final Color inactiveColor;
  final double inactiveChildOpacity;

  final double shadowOpacity;
  final double borderRadius;

  final Duration animationDuration;

  AppExpandableStyle.fromTheme(
      {this.height = Dimens.miniButtonHeight,
      this.width = 100,
      this.shadowOpacity = Dimens.opacityL,
      this.inactiveChildOpacity = Dimens.opacityM,
      this.animationDuration = Dimens.durationM,
      this.borderRadius = Dimens.buttonCornerRadius})
      : activeColor = AppColors.transparent,
        inactiveColor = AppColors.grey;
}
