class Country {
  final String? dialCode;
  final String? flag;
  final String? name;
  final String? code;

  Country({this.dialCode, this.code, this.name, this.flag});

  Country.fromJson(Map<String, dynamic> jsonMap)
      : name = jsonMap['name'],
        flag = jsonMap['flag'],
        code = jsonMap['code'],
        dialCode = jsonMap['dial_code'];
}

List<Country> fromJson(List<dynamic> jsonList) {
  return jsonList.map((json) => Country.fromJson(json)).toList();
}
