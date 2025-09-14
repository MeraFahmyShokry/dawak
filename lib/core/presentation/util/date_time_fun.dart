import 'package:clean_arc/core/utils_package/utils_package.dart';
import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';

class AppDateTimeFormat {
  static String? formatDateAndTime(
      {required String? date, required BuildContext context}) {
    // DateTime now = date;
    String? formattedDate;
    if (date != null && date != 'null') {
      formattedDate =
          DateFormat('EEEE,dd-MM-yyyy – hh:mm', context.translate.localeName)
              .format(DateTime.parse(date!));
    } else {
      // formattedDate = '';
    }
    return formattedDate;
  }

  static String formatDateAndTime2(
      {required String? date, required BuildContext context}) {
    // DateTime now = date;
    String formattedDate = '';
    if (date != null || date != 'null') {
      String format =
          DateFormat('EEE: dd/MM/yyyy', context.translate.localeName)
              .format(DateTime.parse(date ?? '${DateTime.now()}'));
      formattedDate = format;
    } else {
      formattedDate = '';
    }
    return formattedDate;
  }

  static String? formatDate(
      {required String? date, required BuildContext context}) {
    if (date == null || date == 'null') return null;
    String formattedDate =
        DateFormat('EEEE,dd-MM-yyyy', context.translate.localeName)
            .format(DateTime.parse(date!));
    return formattedDate;
  }

  static String? formatTime(
      {required String? date, required BuildContext context}) {
    if (date == null || date == 'null') return null;
    String formattedDate = DateFormat('hh:mm', context.translate.localeName)
        .format(DateTime.parse(date));
    return formattedDate;
  }
}
