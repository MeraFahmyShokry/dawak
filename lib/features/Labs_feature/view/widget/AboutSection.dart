import 'package:clean_arc/core/presentation/extintions/context_extintions.dart';
import 'package:clean_arc/core/presentation/widget/text_app.dart';
import 'package:flutter/material.dart';
import 'package:clean_arc/gen/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: (8.0),
        vertical: (8),
      ),
      child: TextApp(
        // "Al Mokhtabar Laboratories represents the largest network in Egypt with more than 218 branches across the country. "
        // "It is considered the first medical laboratory in Egypt to use 'work cell' technology...",
        LocaleKeys.labdetails.tr(),
        textAlign: TextAlign.justify,
      ),
    );
  }
}
