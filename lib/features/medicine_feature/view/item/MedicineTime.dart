import 'package:clean_arc/core/utils_package/utils_package.dart';
import 'package:flutter/material.dart';

class MedicineTime {
  final String time;
  final String dosage;

  MedicineTime({required this.time, required this.dosage});
}

class MedicineTimeWidget extends StatelessWidget {
  final MedicineTime time;

  const MedicineTimeWidget(this.time, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: Container(
        width: 80,
        height: 60,
        decoration: BoxDecoration(
          border: Border.all(color: context.color.borderColor!),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          children: [
            TextApp(time.time,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: context.color.titleColor)),
            TextApp(time.dosage,
                style: TextStyle(color: context.color.titleColor)),
          ],
        ),
      ),
    );
  }
}
