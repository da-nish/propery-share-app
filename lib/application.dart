import 'package:flutter_app/app/bindings/initial_binding.dart';
import 'package:flutter_app/app/core/routes/app_pages.dart';
import 'package:flutter_app/app/core/theme/app_theme.dart';
import 'package:flutter_app/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';

class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: AppTheme.defaultTheme,
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      getPages: AppPages.routes,
      initialRoute: AppPages.INITIAL.name,
      initialBinding: InitialBinding(),
      supportedLocales: S.delegate.supportedLocales,
    );
  }
}
