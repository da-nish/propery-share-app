/// convert formatted string into dateTime
extension ToDateTime on String {
  ///
  DateTime get toDateTime {
    try {
      return DateTime.parse(this);
    } catch (e) {
      return DateTime.now();
    }
  }
}
