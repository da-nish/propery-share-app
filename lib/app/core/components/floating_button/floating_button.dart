import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/app/core/values/app_assets.dart';

class AppFloatingButton extends StatelessWidget {
  const AppFloatingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return AvatarGlow(
      glowColor: Colors.red,
      endRadius: 40.0,
      duration: const Duration(milliseconds: 2000),
      repeat: true,
      showTwoGlows: true,
      repeatPauseDuration: const Duration(milliseconds: 400),
      child: CircleAvatar(
        backgroundColor: Colors.red,
        radius: 30.0,
        child: Image.asset(
          AppAssets.floatingButtonImage,
          height: 80,
        ),
      ),
    );
  }
}
