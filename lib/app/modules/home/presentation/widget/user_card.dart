import 'package:flutter/material.dart';
import 'package:flutter_app/app/core/theme/theme.dart';
import 'package:flutter_app/app/core/values/app_assets.dart';

class UserCard extends StatelessWidget {
  const UserCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
      CircleAvatar(
        backgroundImage: Image.asset(
          AppAssets.user,
          // height: 70,
          // width: 100,
        ).image,
        radius: 40,
      ),
      SizedBox(width: 8),
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
              Icon(
                Icons.verified,
                color: AppColors.activeGreen,
              )
            ],
          ),
          Container(
            height: 32,
            // color: AppColors.activeBlue,
            child: Row(
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Text("Resident"),
                  style: ButtonStyle(
                    minimumSize: MaterialStateProperty.all(Size(60, 24)),
                    elevation: MaterialStateProperty.all(0),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 8,
                ),
                OutlinedButton(
                  onPressed: () {},
                  child: Row(
                    children: [
                      Text(
                        "Gold",
                        style: AppTextStyle.h6Medium(color: AppColors.yellow1),
                      ),
                    ],
                  ),
                  style: ButtonStyle(
                    minimumSize: MaterialStateProperty.all(Size(40, 24)),
                    elevation: MaterialStateProperty.all(0),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          side: BorderSide(color: AppColors.yellow1, width: 2)),
                    ),
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
