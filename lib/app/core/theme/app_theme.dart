import 'package:flutter_app/app/core/theme/theme.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static final defaultTheme = ThemeData(
      scaffoldBackgroundColor: AppColors.white,
      primaryColor: AppColors.activeOrange,
      fontFamily: 'Montserrat',
      highlightColor: Colors.transparent,
      backgroundColor: AppColors.white,
      bottomAppBarColor: AppColors.white,
      textTheme: ThemeData.light().textTheme.copyWith(
            bodyText1: const TextStyle(
              fontSize: Dimens.h5,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w400,
              color: AppColors.dark,
            ),
            bodyText2: const TextStyle(
              fontSize: Dimens.h4,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w500,
              color: AppColors.dark,
            ),
            headline1: const TextStyle(
              fontSize: Dimens.h1,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.bold,
              color: AppColors.dark,
            ),
            headline2: const TextStyle(
              fontSize: Dimens.h2,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.bold,
              color: AppColors.dark,
            ),
            headline3: const TextStyle(
              fontSize: Dimens.h3,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.bold,
              color: AppColors.dark,
            ),
            headline4: const TextStyle(
              fontSize: Dimens.h4,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.bold,
              color: AppColors.dark,
            ),
            headline5: const TextStyle(
              fontSize: Dimens.h5,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.bold,
              color: AppColors.dark,
            ),
            headline6: const TextStyle(
              fontSize: Dimens.h6,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.bold,
              color: AppColors.dark,
            ),
          ),
      iconTheme: IconThemeData(
        color: Colors.grey[600],
      ),
      cardTheme: CardTheme(
          shadowColor: Colors.grey[200],
          color: AppColors.dark,
          margin: EdgeInsets.zero,
          elevation: 8.0),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.activeGreen, // background (button) color
          foregroundColor: Colors.white, // foreground (text) color
        ),
      ),
      buttonTheme: const ButtonThemeData(
        buttonColor: AppColors.activeGreen,

        height: 56, //  <-- light color
        textTheme:
            ButtonTextTheme.accent, //  <-- dark text for light background
      ),
      snackBarTheme: const SnackBarThemeData(
        backgroundColor: Colors.black,
      ),
      colorScheme:
          ColorScheme.fromSwatch().copyWith(secondary: AppColors.activeGreen));
}
