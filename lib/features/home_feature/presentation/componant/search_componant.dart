import 'package:clean_arc/app.dart';
import 'package:clean_arc/core/presentation/widget/custom_text_field.dart';
import 'package:clean_arc/core/utils_package/utils_package.dart';
import 'package:flutter/material.dart';
import 'package:clean_arc/gen/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
// class SearchComponent extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return CustomTextField(
//       hintText: LocaleKeys.searchForDoctorsNursesLabs.tr(),
//       prefixIcon: AppImages.images.core.svg.search
//           .svg(height: 20, width: 20, fit: BoxFit.fill),
//     );
//   }
// }
class SearchComponent extends StatelessWidget {
  final String? hint;

  const SearchComponent({Key? key, this.hint}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      hintText: hint ?? LocaleKeys.searchForDoctorsNursesLabs.tr(),
      prefixIcon: AppImages.images.core.svg.search
          .svg(height: 20, width: 20, fit: BoxFit.fill),
    );
  }
}
