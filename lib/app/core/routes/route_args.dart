enum RouteParam {
  //New Routes
  selectedCountry("selected_country"),
  email("email"),
  leagueTitle("league_title"),
  ;

  const RouteParam(this.argumentName);
  final String argumentName;
  String get name {
    return argumentName;
  }
}
