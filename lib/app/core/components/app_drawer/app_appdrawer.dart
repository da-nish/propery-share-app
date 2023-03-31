import 'package:flutter_app/app/core/theme/theme.dart';
import 'package:flutter_app/app/core/values/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/app/modules/home/presentation/widget/user_card.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  Widget _getCard(String text, String icon, {ontap, bool hideDivider = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: Dimens.paddingS, vertical: Dimens.paddingXS),
      child: InkWell(
        onTap: () {
          Get.back(id: 1);
          if (ontap != null) {
            ontap();
            // Get.toNamed("page", id: 1);
          }
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                SvgPicture.asset(icon),
                const SizedBox(width: Dimens.grid8),
                Text(text),
              ],
            ),
            if (!hideDivider)
              const Divider(
                color: AppColors.grey,
              )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 0,
      width: double.infinity,
      child: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                  onPressed: () => Get.back(), icon: const Icon(Icons.clear)),
              const SizedBox(height: Dimens.grid16),
              const Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: Dimens.paddingS, vertical: Dimens.paddingXS),
                child: UserCard(),
              ),
              const SizedBox(height: Dimens.grid16),
              _getCard('Overview', AppAssets.drawerUserIcon),
              _getCard('Tax Center', AppAssets.drawerChartIcon),
              Expanded(child: Container()),
              _getCard('Logout', AppAssets.drawerExitIcon, hideDivider: true,
                  ontap: () {
                // Get.offAllNamed(Routes.loginScreen.name);
              }),
            ],
          ),
        ),
      ),
    );
  }
}
