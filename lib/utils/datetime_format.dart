import 'package:intl/intl.dart';

String formatDate(String date) {
  return DateFormat('EEE, dd MMM yy')
      .format(DateFormat('yyyy-MM-ddTHH:mm:ssZ').parse(date));
}

String formatTime(String date) {
  return DateFormat('hh:mm a')
      .format(DateFormat('yyyy-MM-ddTHH:mm:ssZ').parse(date));
}
