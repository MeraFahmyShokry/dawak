import 'package:clean_arc/core/presentation/util/style/images/fonts.gen.dart';
import 'package:clean_arc/core/presentation/widget/custom_dropdown_field.dart';
import 'package:clean_arc/core/routing/navigation_helper.dart';
import 'package:clean_arc/core/utils_package/utils_package.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class BookAppointmentProgressBarComponent extends StatelessWidget {
  const BookAppointmentProgressBarComponent({
    super.key,
    required this.progressValueRatio,
  });

  final double progressValueRatio;
  @override
  Widget build(BuildContext context) {
    return LinearProgressIndicator(
      color: context.color.secondaryColor,
      backgroundColor: context.color.greyCounterBorderColor,
      borderRadius: BorderRadius.circular(4),
      minHeight: 8,
      value: progressValueRatio,
    );
  }
}