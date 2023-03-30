import 'package:flutter_app/app/core/theme/theme.dart';
import 'package:flutter_app/app/core/values/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppTopBarHome extends StatelessWidget implements PreferredSizeWidget {
  // final List<Widget> actions;
  final Function? onTap;
  final String title;
  const AppTopBarHome({super.key, this.onTap, this.title = ""});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: AppColors.dark,
      actions: [
        Container(
          // color: Theme.of(context).scaffoldBackgroundColor,
          padding: const EdgeInsets.symmetric(
              horizontal: Dimens.paddingM, vertical: Dimens.paddingXS),
          width: MediaQuery.of(context).size.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () => Scaffold.of(context).openDrawer(),
                child: SvgPicture.asset(
                  AppAssets.appDrawerIcon,
                  color: AppColors.white,
                ),
              ),
              Text(title),
              InkWell(
                onTap: () {
                  // print(model.getEmail);
                },
                child: Row(
                  children: [
                    // Image.asset('assets/homepage/userImg.png'),
                    Image.asset(
                      AppAssets.logo,
                      // color: AppColors.dark,
                      color: AppColors.white,
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
