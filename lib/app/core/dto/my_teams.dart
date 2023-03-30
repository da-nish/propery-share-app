class MyTeams {
  MyTeams({
    required this.id,
    required this.name,
    required this.type,
    // required this.players,
    required this.cost,
  });

  String id;
  String name;
  int type;
  // List<dynamic> players;
  double cost;

  factory MyTeams.fromJson(Map<String, dynamic> json) => MyTeams(
        id: json["id"],
        name: json["name"],
        type: json["type"],
        // players: List<dynamic>.from(json["players"].map((x) => x)),
        cost: (json["cost"] ?? 0).toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "type": type,
        // "players": List<dynamic>.from(players.map((x) => x)),
        "cost": cost,
      };
}
