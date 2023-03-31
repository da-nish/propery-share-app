part of 'app_pages.dart';

enum Routes {
  home("/home"),
  taxCenter("/tax_center"),
  launch('/'),
  ;

  const Routes(this.pathName);
  final String pathName;
  String get name {
    return pathName;
  }
}
