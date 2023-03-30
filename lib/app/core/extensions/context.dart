import 'package:flutter/material.dart';

extension ContextExtension on BuildContext {
  Size _displaySize(BuildContext context) {
    return MediaQuery.of(context).size;
  }

  double get displayHeight => _displaySize(this).height;
  double get displayWidth => _displaySize(this).width;

  double displayHeightPercentage(int percentage) {
    if (percentage >= 0 && percentage <= 100) {
      return displayHeight * (percentage / 100);
    }
    throw Exception("Invalid percentage value");
  }

  double displayWidthPercentage(int percentage) {
    if (percentage >= 0 && percentage <= 100) {
      return displayWidth * (percentage / 100);
    }
    throw Exception("Invalid percentage value");
  }
}
