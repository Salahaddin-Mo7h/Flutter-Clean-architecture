import 'package:jiffy/jiffy.dart';
import 'package:scb_arch_demo/utils/config/app_constants.dart';

extension IntExtension on int {
  DateTime get dateTime => Jiffy.parseFromMillisecondsSinceEpoch(this).dateTime;

  String get dateTimeString => Jiffy.parseFromMillisecondsSinceEpoch(this)
      .format(pattern: AppConstants.dateTimeFormat);
}
