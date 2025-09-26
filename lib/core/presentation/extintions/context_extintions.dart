import 'package:clean_arc/core/utils/translate.dart';
import 'package:clean_arc/core/utils_package/utils_package.dart';
import 'package:flutter/material.dart';

extension ContextExt on BuildContext {
  MyColors get color => Theme.of(this).extension<MyColors>()!;

  MyAssets get assets => Theme.of(this).extension<MyAssets>()!;

  // Translations get translate => Translations.of(this)!;

  Border get border => Border.all(color: color.borderColor!);

  bool get isEnLocale => isEnglish;
  bool get isArabicLocal => isArabic;

  TextStyle get textStyle => Theme.of(this).textTheme.displaySmall!;

  TextStyle get textStyleButton =>
      Theme.of(this).textTheme.displaySmall!.copyWith(
          fontSize: AppDimensions.fontSizeLarge,
          color: Colors.white,
          fontWeight: FontWeightHelper.medium);

  ///=======================  Sizes =========================================ئ

  double get width => MediaQuery.of(this).size.width;

  double get height => MediaQuery.of(this).size.height;

  // String tr2(String key) {
  //   final translate = Translations.of(this);
  //   if (translate == null)
  //     return key; // لو لم تكن الترجمة متاحة، يرجع المفتاح نفسه
  //
  //   /// استخدم `localizations` لجلب الترجمة مباشرة
  //   final Map<String, String> translations = {
  //     "low": translate.low,
  //     "medium": translate.medium,
  //     "high": translate.high,
  //     "urgent": translate.urgent,
  //     "technical": translate.technical,
  //     "financial": translate.financial,
  //     "hr": translate.hR,
  //     "facilities": translate.facilities,
  //     "open": translate.open,
  //     "inprogress": translate.inProgress,
  //     "closed": translate.closed,
  //     "resolution": translate.resolution,
  //     "all": translate.all,
  //     "neurology": translate.neurology,
  //     "orthopedic": translate.orthopedic,
  //     "ophthalmology": translate.ophthalmology,
  //     "onHisWay": translate.onHisWay,
  //     "delivered": translate.delivered,
  //   };
  //
  //   if (translations.containsKey(key)) {
  //     return translations[key]!;
  //   }
  //   String lowerKey = key.toLowerCase();
  //   if (translations.containsKey(lowerKey)) {
  //     print("sadfdsad");
  //     return translations[lowerKey]!;
  //   }
  //   // المحاولة الثانية: البحث عن المفتاح بعد التنظيف
  //   String cleanKey = key.toLowerCase().replaceAll(RegExp(r"[^\w]"), "");
  //   var xxxx = translations.map((key, value) =>
  //       MapEntry(key.toLowerCase().replaceAll(RegExp(r"[^\w]"), ""), value));
  //   return xxxx[cleanKey.toLowerCase()] ?? key;
  // }
// return translations[key.toLowerCase()] ?? key; // يرجع الترجمة أو المفتاح إذا لم يوجد
// }
}
