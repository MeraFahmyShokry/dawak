import 'package:clean_arc/core/presentation/widget/text_app.dart';
import 'package:clean_arc/core/utils_package/utils_package.dart';
import 'package:flutter/material.dart';

class AddNewPatientButton extends StatelessWidget {
  final VoidCallback onTap;

  const AddNewPatientButton({super.key, required this.onTap});

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
              context.translate.addNewPatient,
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
