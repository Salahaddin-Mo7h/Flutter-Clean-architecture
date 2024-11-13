import 'package:jiffy/jiffy.dart';
import 'package:scb_arch_demo/utils/config/app_constants.dart';

extension DateTimeExtension on DateTime {
  // Extension to format the DateTime as a date string
  String get dateString {
    // Use Jiffy.fromDateTime() to create a Jiffy instance from DateTime
    return Jiffy.parseFromDateTime(this)
        .format(pattern: AppConstants.dateFormat);
  }

  // Extension to format the DateTime as a datetime string
  String get datetimeString {
    return Jiffy.parseFromDateTime(this)
        .format(pattern: AppConstants.dateTimeFormat);
  }

  // Extension to convert the DateTime to the local time zone
  DateTime get toMyLocal {
    // Use Jiffy.fromDateTime() to create a Jiffy instance and then access the DateTime
    final dateTime =
        Jiffy.parseFromDateTime(this).dateTime; // Access the DateTime object

    // Convert to local time and return
    return dateTime.toLocal();
  }
}
