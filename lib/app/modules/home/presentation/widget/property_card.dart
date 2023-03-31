import 'package:flutter/material.dart';
import 'package:flutter_app/app/core/theme/theme.dart';
import 'package:flutter_app/app/core/values/app_assets.dart';

class PropertyCard extends StatelessWidget {
  const PropertyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(width: 8),
            Text(
              "Property 1",
              style: AppTextStyle.h5Bold(),
            ),
          ],
        ),
        const SizedBox(height: 8),
        Row(
          children: [
            SizedBox(
              height: 140,
              width: 100,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  AppAssets.buildingImage,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(width: 8),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                      style: const TextStyle(height: 1.6, letterSpacing: 0.58),
                      children: [
                        TextSpan(
                            text: 'Drawdown capital: ',
                            style:
                                AppTextStyle.h6Regular(color: AppColors.dark)),
                        TextSpan(
                            text: '75,00,000',
                            style:
                                AppTextStyle.h6Medium(color: AppColors.dark)),
                      ]),
                ),
                RichText(
                  text: TextSpan(
                      style: const TextStyle(height: 1.6, letterSpacing: 0.58),
                      children: [
                        TextSpan(
                            text: 'Current valuation: ',
                            style:
                                AppTextStyle.h6Regular(color: AppColors.dark)),
                        TextSpan(
                            text: '84,00,000',
                            style:
                                AppTextStyle.h6Medium(color: AppColors.dark)),
                        TextSpan(
                            text: '+12%',
                            style: AppTextStyle.h7Medium(
                                color: AppColors.activeGreen)),
                      ]),
                ),
                RichText(
                  text: TextSpan(
                      style: const TextStyle(height: 1.6, letterSpacing: 0.58),
                      children: [
                        TextSpan(
                            text: 'Current monthly distribution:',
                            style:
                                AppTextStyle.h6Regular(color: AppColors.dark)),
                        TextSpan(
                            text: '60,000',
                            style:
                                AppTextStyle.h6Medium(color: AppColors.dark)),
                      ]),
                ),
                RichText(
                  text: TextSpan(
                      style: const TextStyle(height: 1.6, letterSpacing: 0.58),
                      children: [
                        TextSpan(
                            text: 'Current annualized yield: ',
                            style:
                                AppTextStyle.h6Regular(color: AppColors.dark)),
                        TextSpan(
                            text: '8.00%',
                            style: AppTextStyle.h6Medium(
                                color: AppColors.activeGreen)),
                      ]),
                ),
              ],
            )
          ],
        ),
      ],
    );
  }
}
