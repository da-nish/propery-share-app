import 'package:flutter_app/application.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '/flavors/build_config.dart';
import '/flavors/env_config.dart';
import '/flavors/environment.dart';

Future<void> main() async {
  EnvConfig devConfig = EnvConfig(
    appName: "FantasyBulls",
    baseUrl: "https://api.github.com",
    shouldCollectCrashLog: true,
  );

  BuildConfig.instantiate(
    envType: Environment.development,
    envConfig: devConfig,
  );

  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]).then((_) {
    runApp(const Application());
  });
}
