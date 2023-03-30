import 'package:intl/intl.dart';

extension IntegerExtension on int {
  String toLocalTime() {
    DateTime datetime =
        DateTime.fromMillisecondsSinceEpoch(this * 1000, isUtc: false);
    return DateFormat('hh:mm a').format(datetime);
  }

  String toLocalTime24() {
    DateTime datetime =
        DateTime.fromMillisecondsSinceEpoch(this * 1000, isUtc: false);
    return DateFormat('HH:mm').format(datetime);
  }

  String toLocalDateTime() {
    DateTime datetime =
        DateTime.fromMillisecondsSinceEpoch(this * 1000, isUtc: false);
    return DateFormat('hh:mm a d MMM yyyy').format(datetime);
  }

  String toLocalDate() {
    DateTime datetime =
        DateTime.fromMillisecondsSinceEpoch(this * 1000, isUtc: false);
    return DateFormat('d MMM yyyy').format(datetime);
  }

  String ordinal() {
    if (!(this >= 1 && this <= 100)) return "${this}";
    if (this >= 11 && this <= 13) return "${this}th";

    switch (this % 10) {
      case 1:
        return "${this}st";
      case 2:
        return "${this}nd";
      case 3:
        return "${this}rd";
      default:
        return "${this}th";
    }
  }
}
