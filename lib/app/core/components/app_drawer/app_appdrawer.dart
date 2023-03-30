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
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              const SizedBox(height: Dimens.grid16),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: Dimens.paddingS, vertical: Dimens.paddingXS),
                child: Row(
                  children: [
                    Image.asset(AppAssets.placeholderUserImage),
                    const SizedBox(width: Dimens.grid12),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Robert McLarren",
                          style: AppTextStyle.h5Bold(),
                        ),
                        Text(
                          "\$2,540",
                          style: AppTextStyle.h3Bold(),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(height: Dimens.grid16),
              _getCard('Account', AppAssets.drawerUserIcon),
              _getCard('Portfolio', AppAssets.drawerChartIcon),
              _getCard('Fantasy league', AppAssets.drawerCupIcon),
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
