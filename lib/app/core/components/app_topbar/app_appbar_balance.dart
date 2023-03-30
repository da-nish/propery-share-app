import 'package:flutter_app/app/core/theme/theme.dart';
import 'package:flutter_app/app/core/values/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppTopBarBalance extends StatelessWidget implements PreferredSizeWidget {
  // final List<Widget> actions;
  final Function? onTap;
  final int navigationId;
  const AppTopBarBalance({super.key, this.navigationId = 1, this.onTap});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: AppColors.transparent,
      actions: [
        Container(
          color: Theme.of(context).scaffoldBackgroundColor,
          padding: const EdgeInsets.symmetric(
              horizontal: Dimens.paddingM, vertical: Dimens.paddingXS),
          width: MediaQuery.of(context).size.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  if (navigationId == 0) {
                    Get.back();
                  } else {
                    Get.back(id: navigationId);
                  }
                },
                child: const Icon(Icons.arrow_back_ios_new_rounded),
              ),
              Image.asset(
                AppAssets.logo,
              ),
              InkWell(
                onTap: () {
                  // print(model.getEmail);
                },
                child: Row(
                  children: [
                    // Image.asset('assets/homepage/userImg.png'),
                    Text(
                      "\$9999",
                      style: AppTextStyle.h4Bold(),
                    )
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
