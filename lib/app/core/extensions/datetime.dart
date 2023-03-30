import 'package:intl/intl.dart';

///
extension DateOnlyCompare on DateTime {
  /// return true if same day of year.
  bool isSameDate(DateTime other) {
    return year == other.year && month == other.month && day == other.day;
  }

  String dateFormat() {
    final DateFormat formatter = DateFormat('d MMM, yy');
    return formatter.format(this).toString();
  }

  String dateFormat1() {
    final DateFormat formatter = DateFormat('dd/MM/yy');
    return formatter.format(this).toString();
  }

  String formatDateTime() {
    final DateFormat formatter = DateFormat('dd MMM hh:mm a');
    return formatter.format(this).toString();
  }

  String remainingTime() {
    Duration remainingTiming = difference(DateTime.now());
    if (remainingTiming.inMinutes < 0) return "-";
    if (remainingTiming.inDays > 0) {
      return "${remainingTiming.inDays} day${remainingTiming.inDays != 1 ? '' : 's'}";
    } else if (remainingTiming.inHours > 0) {
      return "${remainingTiming.inHours} hour${remainingTiming.inHours != 1 ? '' : 's'}";
    } else {
      return "${remainingTiming.inMinutes} minute${remainingTiming.inMinutes != 1 ? '' : 's'}";
    }
  }
}
