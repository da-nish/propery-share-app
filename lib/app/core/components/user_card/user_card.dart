import 'package:flutter/material.dart';
import 'package:flutter_app/app/core/theme/theme.dart';
import 'package:flutter_app/app/core/values/app_assets.dart';
import 'package:gradient_borders/gradient_borders.dart';

class UserCard extends StatelessWidget {
  const UserCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Container(
        padding: const EdgeInsets.all(2),
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          border: GradientBoxBorder(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 226, 193, 59),
                Color.fromARGB(255, 239, 163, 32)
              ],
            ),
            width: 4,
          ),
        ),
        child: CircleAvatar(
          backgroundImage: Image.asset(
            AppAssets.user,
            // height: 70,
            // width: 100,
          ).image,
          radius: 40,
        ),
      ),
      const SizedBox(width: 8),
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                "Praveen Kumar",
                style: AppTextStyle.h3Bold(),
              ),
              const Icon(
                Icons.verified,
                color: AppColors.activeGreen,
              )
            ],
          ),
          SizedBox(
            height: 32,
            // color: AppColors.activeBlue,
            child: Row(
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    minimumSize: MaterialStateProperty.all(const Size(60, 24)),
                    elevation: MaterialStateProperty.all(0),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                  ),
                  child: const Text("Resident"),
                ),
                const SizedBox(
                  width: 8,
                ),
                OutlinedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    minimumSize: MaterialStateProperty.all(const Size(40, 24)),
                    elevation: MaterialStateProperty.all(0),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          side: const BorderSide(
                              color: AppColors.yellow1, width: 2)),
                    ),
                  ),
                  child: Row(
                    children: [
                      Text(
                        "Gold",
                        style: AppTextStyle.h6Medium(color: AppColors.yellow1),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          RichText(
            text: TextSpan(
                style: const TextStyle(height: 1.6, letterSpacing: 0.58),
                children: [
                  TextSpan(
                      text: 'Portfolio value: ',
                      style: AppTextStyle.h6Regular(color: AppColors.dark)),
                  TextSpan(
                      text: '4,00,00,000 ',
                      style: AppTextStyle.h6Medium(color: AppColors.dark)),
                ]),
          ),
        ],
      )
    ]);
  }
}
