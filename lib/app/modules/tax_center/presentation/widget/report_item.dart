import 'package:flutter/material.dart';
import 'package:flutter_app/app/core/theme/theme.dart';
import 'package:flutter_app/app/data/model/report_model.dart';

class ReportItem extends StatelessWidget {
  final Quarter? item;
  const ReportItem({this.item, super.key});

  @override
  Widget build(BuildContext context) {
    if (item?.isTotalField ?? false) {
      return Container(
        padding: const EdgeInsets.symmetric(
            horizontal: Dimens.grid2, vertical: Dimens.grid10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("${item?.name}",
                style: AppTextStyle.h5Medium(color: AppColors.dark)),
            const SizedBox(height: Dimens.grid8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("${item?.income}",
                    style: AppTextStyle.h6Regular(color: AppColors.dark)),
                Text("(${item?.tds})",
                    style: AppTextStyle.h6Regular(color: AppColors.activeRed)),
                Text("${item?.distribution}",
                    style: AppTextStyle.h6Regular(color: AppColors.grey)),
              ],
            ),
            const Divider()
          ],
        ),
      );
    }

    return Container(
      padding: const EdgeInsets.symmetric(
          horizontal: Dimens.grid2, vertical: Dimens.grid10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
            text: TextSpan(
                style: const TextStyle(height: 1.6, letterSpacing: 0.58),
                children: [
                  TextSpan(
                      text: item?.name ?? "",
                      style: AppTextStyle.h5Medium(color: AppColors.dark)),
                  TextSpan(
                      text: '    ',
                      style: AppTextStyle.h6Medium(color: AppColors.dark)),
                  TextSpan(
                      text: item?.duration ?? "",
                      style: AppTextStyle.h6Medium(color: AppColors.grey)),
                ]),
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("${item?.income}",
                  style: AppTextStyle.h6Regular(color: AppColors.dark)),
              Text("(${item?.tds})",
                  style: AppTextStyle.h6Regular(color: AppColors.activeRed)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("${item?.distribution}",
                      style: AppTextStyle.h6Regular(color: AppColors.grey)),
                  const SizedBox(width: Dimens.grid16),
                  const Icon(
                    Icons.file_download_outlined,
                    size: 20,
                  )
                ],
              ),
            ],
          ),
          const Divider()
        ],
      ),
    );
  }
}
