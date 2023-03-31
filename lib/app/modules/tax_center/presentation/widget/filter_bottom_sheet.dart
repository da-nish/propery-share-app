import 'package:flutter/material.dart';
import 'package:flutter_app/app/core/theme/theme.dart';
import 'package:flutter_app/app/data/model/pair.dart';
import 'package:flutter_app/app/modules/tax_center/controller/tax_center_controller.dart';
import 'package:get/get.dart';

class FilterBottomSheet extends GetView<TaxCenterController> {
  const FilterBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Container(
          height: Dimens.grid8,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(Dimens.grid16),
              topRight: Radius.circular(Dimens.grid16),
            ),
          ),
        ),
        const SizedBox(height: Dimens.grid8),
        Container(
          width: Dimens.grid40,
          height: Dimens.grid4,
          decoration: BoxDecoration(
              color: AppColors.grey2,
              borderRadius: AppStyle.circularBorder(radius: Dimens.grid4)),
        ),
        const SizedBox(height: Dimens.grid16),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          const Icon(Icons.filter_alt_outlined, color: AppColors.blue),
          Text(
            "Filter",
            style: AppTextStyle.h4Regular(color: AppColors.blue),
          ),
        ]),
        const Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: Dimens.grid12),
          child: SizedBox(
            height: Dimens.grid200,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      "Financial Year",
                      style:
                          AppTextStyle.h4Bold(color: AppColors.textSecondary),
                    ),
                  ],
                ),
                const SizedBox(height: Dimens.grid10),
                Container(
                  width: double.infinity,
                  child: Wrap(
                      children: controller.fyList
                          .map((e) => _shadowBotton(
                              e, e.second == controller.selectedFY))
                          .toList()),
                ),

                const SizedBox(height: 8),
                // Expanded(
                //   child: Obx(
                //     () => ListView.builder(
                //         itemCount: controller?.displayList.length ?? 0,
                //         itemBuilder: ((context, index) {
                //           return statusItem(
                //               controller?.displayList[index].columnId ?? "",
                //               controller?.displayList[index].columnName ?? "",
                //               controller!.isSelected(
                //                   controller!.displayList[index].columnId,
                //                   controller!.taskItem.columnId));
                //         })),
                //   ),
                // )
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _shadowBotton(Pair item, bool selected) {
    return InkWell(
      onTap: () {
        if (!selected) {
          controller.selectedFY = item.second;
        }
        Get.back();
      },
      child: Container(
        padding: const EdgeInsets.all(Dimens.grid4),
        margin: const EdgeInsets.all(Dimens.grid4),
        height: 30,
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(4),
          boxShadow: [
            BoxShadow(
              color: AppColors.blueShade.withOpacity(0.2),
              spreadRadius: 1,

              blurRadius: 8,
              offset: const Offset(1, 4), // changes position of shadow
            ),
          ],
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            if (selected)
              const Icon(
                Icons.done_outlined,
                color: AppColors.activeBlue,
              ),
            Flexible(
              child: Text(
                item.first,
                maxLines: 1,
                style: AppTextStyle.h5Regular(
                    color: selected
                        ? AppColors.activeBlue
                        : AppColors.textSecondary),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
