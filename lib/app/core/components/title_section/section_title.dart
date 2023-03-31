import 'package:flutter/material.dart';
import 'package:flutter_app/app/core/theme/theme.dart';

class SectionTitle extends StatelessWidget {
  final String title;
  final bool positionRight;
  const SectionTitle(
      {required this.title, this.positionRight = false, super.key});

  List<Widget> get items {
    List<Widget> temp = [
      Text(
        title,
        style: AppTextStyle.h3Bold(
          color: AppColors.blue,
        ),
      ),
      const SizedBox(width: 8),
      Expanded(
        child: Container(
            height: 3,
            width: double.infinity,
            color: AppColors.blue,
            child: Container()),
      )
    ];
    if (positionRight) {
      return temp.reversed.toList();
    }
    return temp;
  }

  @override
  Widget build(BuildContext context) {
    return Row(children: items);
  }
}
