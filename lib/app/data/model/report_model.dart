class Report {
  Report({
    required this.quarter,
    required this.year,
    required this.id,
  });

  List<Quarter> quarter;
  String year;
  String id;

  factory Report.fromJson(Map<String, dynamic> json) => Report(
        quarter:
            List<Quarter>.from(json["quarter"].map((x) => Quarter.fromJson(x))),
        year: json["year"],
        id: json["id"],
      );
}

class Quarter {
  Quarter(
      {required this.name,
      required this.duration,
      required this.income,
      required this.tds,
      required this.distribution,
      this.isTotalField = false});

  String name;
  String duration;
  int income;
  int tds;
  int distribution;
  bool isTotalField;

  factory Quarter.fromJson(Map<String, dynamic> json) => Quarter(
        name: json["name"],
        duration: json["duration"],
        income: json["income"],
        tds: json["tds"],
        distribution: json["distribution"],
      );
}
