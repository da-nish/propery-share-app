part of 'app_pages.dart';

enum Routes {
  //New Routes

  home("/home"),
  taxCenter("/tax_center"),
  launch('/'),
  // assetDetailScreen("/asset_detail_screen"),
  // globalSearch("/global_search_screen"),
  // portfolioScreen("/portfolio"),
  // tradeBottomSheet("/trade_bottom_sheet"),
  // accountSettingsScreen("/account_settings_screen"),
  // transactionHistoryScreen("/transaction_history_screen"),
  // transactionDetailsScreen("/transaction_details_screen"),
  // eStatementScreen("/e_statement_screen"),
  // watchlistScreen("/watchlist_screen"),
  // summaryScreen("/summary_screen"),
  // notificationScreen("/notification_screen"),
  // communityScreen("/community_screens"),
  // followerScreen("/follower_screen"),
  // allstarAcademyScreen("/allstar_academy_screen"),
  // matchCenterScreen("/match_center_screen"),
  // launchScreen("/launch_screen"),
  // signUpCompleteScreen("/signup_complete_screen"),
  // forgotPasswordSuccessScreen("/forgot_password_succes_screen"),
  // checkMailScreen("/check_mail_screen"),
  // assetConversionScreen("/asset_conversion_screen"),
  // searchAssetsScreen("/search_assets_screen"),
  ;

  const Routes(this.pathName);
  final String pathName;
  String get name {
    return pathName;
  }
}
