import 'package:clean_arc/core/presentation/widget/CustomAppBar.dart';
import 'package:clean_arc/core/routing/navigation_helper.dart';
import 'package:clean_arc/core/utils_package/utils_package.dart';
import 'package:clean_arc/features/medicine_feature/view/item/MedicineItem.dart';
import 'package:clean_arc/features/medicine_feature/view/item/MedicineTime.dart';
import 'package:clean_arc/features/medicine_feature/view/medicine_view.dart';
import 'package:flutter/material.dart';
import 'package:clean_arc/gen/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
class TimeMedicineScreen extends StatefulWidget {
  const TimeMedicineScreen({super.key});

  @override
  State<TimeMedicineScreen> createState() => _TimeMedicineScreenState();
}

class _TimeMedicineScreenState extends State<TimeMedicineScreen> {
  @override
  Widget build(BuildContext context) {
    List<MedicineItem> medicines = [
      MedicineItem(
        medicineName: "Panadol",
        timesPerDay: "3 Times Per day",
        times: [
          MedicineTime(time: "07:00 AM", dosage: "2 Tablets"),
          MedicineTime(time: "04:00 PM", dosage: "2 Tablets"),
          MedicineTime(time: "11:00 PM", dosage: "2 Tablets"),
        ],
      ),
      MedicineItem(
        medicineName: "Panadol",
        timesPerDay: "3 Times Per day",
        times: [
          MedicineTime(time: "07:00 AM", dosage: "2 Tablets"),
          MedicineTime(time: "04:00 PM", dosage: "2 Tablets"),
          MedicineTime(time: "11:00 PM", dosage: "2 Tablets"),
        ],
      ),
      MedicineItem(
        medicineName: "Panadol",
        timesPerDay: "3 Times Per day",
        times: [],
      ),
    ];

    return Scaffold(
      appBar: CustomAppBar(
        title: LocaleKeys.dailyMedicine.tr(),
        actions: [
          IconButton(
            icon: Icon(
              Icons.add,
              color: context.color.primaryColor,
            ),
            onPressed: () {
              NavigationHelper.push(context, DailyMedicineScreen());
            },
          ),
        ],
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: medicines.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 12.0),
            child: medicines[index],
          );
        },
      ),
    );
  }
}
