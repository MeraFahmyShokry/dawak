import 'package:clean_arc/core/presentation/widget/text_app.dart';
import 'package:clean_arc/core/utils_package/utils_package.dart';
import 'package:clean_arc/gen/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class AddNewPatientButtonComponent extends StatelessWidget {
  final VoidCallback onTap;

  const AddNewPatientButtonComponent({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: onTap,
        child: Row(
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Icon(
                Icons.add,
                color: Colors.blue,
                size: 30,
              ),
            ),
            const SizedBox(width: 10),
            TextApp(
              LocaleKeys.addNewPatient.tr(),
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: context.color.titleColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
