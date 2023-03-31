import 'package:flutter_app/app/core/components/user_card/user_card.dart';
import 'package:flutter_app/app/core/routes/app_pages.dart';
import 'package:flutter_app/app/core/theme/theme.dart';
import 'package:flutter_app/app/core/values/app_assets.dart';
import 'package:flutter/material.dart';
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
          Get.back();
          if (ontap != null) {
            ontap();
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
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                      onPressed: () => Get.back(),
                      icon: const Icon(Icons.clear)),
                ],
              ),
              const SizedBox(height: Dimens.grid16),
              const Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: Dimens.paddingS, vertical: Dimens.paddingXS),
                child: UserCard(),
              ),
              const SizedBox(height: Dimens.grid16),
              _getCard('Overview', AppAssets.drawerUserIcon, ontap: () {
                Get.toNamed(Routes.home.name);
              }),
              _getCard('Tax Center', AppAssets.drawerChartIcon, ontap: () {
                Get.toNamed(Routes.taxCenter.name);
              }),
              Expanded(child: Container()),
              _getCard('Logout', AppAssets.drawerExitIcon,
                  hideDivider: true, ontap: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
