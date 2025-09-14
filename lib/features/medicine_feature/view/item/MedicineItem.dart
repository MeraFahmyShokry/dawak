import 'package:clean_arc/core/utils_package/utils_package.dart';
import 'package:clean_arc/features/medicine_feature/view/item/MedicineTime.dart';
import 'package:flutter/material.dart';
import 'package:clean_arc/gen/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
class MedicineItem extends StatefulWidget {
  final String medicineName;
  final String timesPerDay;
  final List<MedicineTime> times;

  const MedicineItem({
    Key? key,
    required this.medicineName,
    required this.timesPerDay,
    required this.times,
  }) : super(key: key);

  @override
  _MedicineItemState createState() => _MedicineItemState();
}

class _MedicineItemState extends State<MedicineItem> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12.w),
      decoration: BoxDecoration(
        color: context.color.whiteColor,
        borderRadius: BorderRadius.circular(10.r),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 3,
            offset: const Offset(0, 0),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: context.color.whiteColor,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 2,
                        blurRadius: 3,
                        offset: const Offset(0, 0),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Image.asset(
                      "assets/images/core/png/mage_tablet.png",
                      fit: BoxFit.fill,
                      width: 30.w,
                      height: 30.h,
                    ),
                  ),
                ),
                SizedBox(width: 12.w),
                Column(
                  children: [
                    TextApp(
                      widget.medicineName,
                      style: TextStyle(
                        fontSize: AppDimensions.fontSizeExtraLarge20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Row(
                      children: [
                        Icon(Icons.access_time,
                            size: 16, color: context.color.primaryColor),
                        const SizedBox(width: 4),
                        TextApp(
                          widget.timesPerDay,
                          style: TextStyle(color: Colors.grey.shade600),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 8),
            GestureDetector(
              onTap: () {
                setState(() {
                  isExpanded = !isExpanded;
                });
              },
              child: Container(
                width: double.infinity,
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                decoration: BoxDecoration(
                  color: context.color.primaryColor?.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextApp(LocaleKeys.times.tr(),
                        style: TextStyle(
                            color: context.color.primaryColor,
                            fontSize: AppDimensions.fontSizeDefault,
                            fontWeight: FontWeightHelper.medium)),
                    Icon(
                      isExpanded
                          ? Icons.keyboard_arrow_up
                          : Icons.keyboard_arrow_down,
                      color: Colors.blue,
                    ),
                  ],
                ),
              ),
            ),
            if (isExpanded)
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: widget.times
                        .map((time) => MedicineTimeWidget(time))
                        .toList(),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
