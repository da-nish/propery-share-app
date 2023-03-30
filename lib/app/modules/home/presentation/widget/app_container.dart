import 'package:flutter/material.dart';
import 'package:flutter_app/app/core/theme/theme.dart';

class AppContainer extends StatelessWidget {
  final Widget child;
  const AppContainer({required this.child, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(vertical: 4),
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors.white,
          boxShadow: [
            BoxShadow(
              color: AppColors.blueShade.withOpacity(0.2),
              spreadRadius: 1,

              blurRadius: 8,
              offset: const Offset(1, 4), // changes position of shadow
            ),
          ],
        ),
        child: child);
  }
}
