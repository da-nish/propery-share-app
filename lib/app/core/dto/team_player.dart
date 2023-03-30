class TeamPlayer {
  TeamPlayer({
    required this.assetCode,
    required this.name,
    required this.team,
    required this.weight,
    required this.position,
    required this.investment,
  });

  String assetCode;
  String name;
  String team;
  int weight;
  String position;
  int investment;

  factory TeamPlayer.fromJson(Map<String, dynamic> json) => TeamPlayer(
        assetCode: json["assetCode"],
        name: json["name"],
        team: json["team"],
        weight: json["weight"],
        position: json["position"],
        investment: json["investment"],
      );

  Map<String, dynamic> toJson() => {
        "assetCode": assetCode,
        "name": name,
        "team": team,
        "weight": weight,
        "position": position,
        "investment": investment,
      };
}
