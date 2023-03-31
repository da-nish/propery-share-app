import 'package:flutter/material.dart';
import 'package:flutter_app/app/core/theme/theme.dart';

class AppRaisedButtonStyle {
  final double height;
  final Color activeColor;
  final Color inactiveColor;
  final Color borderColor;
  final double inactiveChildOpacity;
  final Color iconColor;
  final double shadowOpacity;
  final double borderRadius;

  final Duration animationDuration;

  AppRaisedButtonStyle.fromTheme(
      {this.height = Dimens.raisedButtonHeight,
      this.shadowOpacity = Dimens.opacityL,
      this.inactiveChildOpacity = Dimens.opacityM,
      this.animationDuration = Dimens.durationM,
      this.iconColor = AppColors.dark,
      this.borderRadius = Dimens.buttonCornerRadius})
      : activeColor = AppColors.activeGreen,
        borderColor = AppColors.activeGreen,
        inactiveColor = AppColors.grey;

  AppRaisedButtonStyle.fromThemeBorder(
      {this.height = Dimens.raisedButtonHeight,
      this.shadowOpacity = Dimens.opacityL,
      this.inactiveChildOpacity = Dimens.opacityM,
      this.iconColor = AppColors.dark,
      this.animationDuration = Dimens.durationM,
      this.borderRadius = Dimens.buttonCornerRadius})
      : activeColor = AppColors.transparent,
        borderColor = AppColors.grey2,
        inactiveColor = AppColors.grey;

  AppRaisedButtonStyle.fromThemeGreen(
      {this.height = Dimens.raisedButtonHeight,
      this.shadowOpacity = Dimens.opacityL,
      this.inactiveChildOpacity = Dimens.opacityM,
      this.animationDuration = Dimens.durationM,
      this.iconColor = AppColors.dark,
      this.borderRadius = Dimens.buttonCornerRadius})
      : activeColor = AppColors.activeGreen,
        inactiveColor = AppColors.grey,
        borderColor = AppColors.transparent;
}
