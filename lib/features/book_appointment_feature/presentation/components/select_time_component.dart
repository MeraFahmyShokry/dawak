import 'package:clean_arc/core/utils_package/utils_package.dart';
import 'package:clean_arc/features/book_appointment_feature/controller/book_appointment_controller.dart';
import 'package:flutter/material.dart';

class SelectTimeComponent extends StatelessWidget {
  const SelectTimeComponent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 16,
      children: [
        TextApp(
          context.translate.selectTime,
          style: context.textStyle.copyWith(
              fontSize: AppDimensions.fontSizeDefault,
              fontWeight: FontWeightHelper.medium,
              color: context.color.titleColor),
        ),
        TimeSlotsComponent(),
      ],
    );
  }
}

class TimeSlotsComponent extends StatefulWidget {
  TimeSlotsComponent({super.key});

  // static ValueNotifier<String?> selectedTime = ValueNotifier(null);

  @override
  State<TimeSlotsComponent> createState() => _TimeSlotsComponentState();
}

class _TimeSlotsComponentState extends State<TimeSlotsComponent> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
        spacing: 24,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TimeSlotSection(
              title: '',
              slots: (BookAppointmentCubit.get(context)
                      .selectedDate
                      ?.availableTimes ??
                  []))
        ]);
  }
}

class TimeSlotSection extends StatefulWidget {
  final String title;
  final List<String> slots;

  const TimeSlotSection({
    required this.title,
    required this.slots,
    super.key,
  });

  @override
  State<TimeSlotSection> createState() => _TimeSlotSectionState();
}

class _TimeSlotSectionState extends State<TimeSlotSection> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // TextApp(
        //   title,
        //   style: context.textStyle.copyWith(
        //       fontSize: AppDimensions.fontSizeSmall,
        //       fontWeight: FontWeightHelper.medium,
        //       color: context.color.titleColor),
        // ),
        // const SizedBox(height: 8),
        LayoutBuilder(builder: (context, constrains) {
          final hSpacing = 16.0;
          final vSpacing = 8.0;
          final itemsPerLine = 3;
          // print('screen width by builder=${constrains.maxWidth}');
          // print('screen width by media=${MediaQuery.sizeOf(context).width}');
          return Wrap(
            spacing: hSpacing,
            runSpacing: vSpacing,
            children: widget.slots
                .map(
                  (slot) => InkWell(
                    onTap: () {
                      BookAppointmentCubit.get(context).selectedTime = slot;
                      setState(() {});
                    },
                    child: TimeSlotItem(
                      width: (constrains.maxWidth -
                              (itemsPerLine - 1) * hSpacing) /
                          itemsPerLine,
                      slot: slot,
                    ),
                  ),
                )
                .toList(),
          );
        }),
      ],
    );
  }
}

class TimeSlotItem extends StatefulWidget {
  final String slot;
  final double width;

  TimeSlotItem({
    required this.slot,
    super.key,
    required this.width,
  });

  @override
  State<TimeSlotItem> createState() => _TimeSlotItemState();
}

class _TimeSlotItemState extends State<TimeSlotItem> {
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      width: widget.width,
      alignment: AlignmentDirectional.center,
      decoration: BoxDecoration(
          color: BookAppointmentCubit.get(context).selectedTime == widget.slot
              ? context.color.primaryColor
              : context.color.whiteColor,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(width: 1, color: context.color.borderColor!)),
      duration: Duration(milliseconds: 300),
      child: AspectRatio(
        aspectRatio: 3.9,
        child: FittedBox(
          fit: BoxFit.scaleDown,
          child: TextApp(
            widget.slot,
            style: context.textStyle.copyWith(
                fontSize: AppDimensions.fontSizeSmall,
                fontWeight: FontWeightHelper.medium,
                color: widget.slot ==
                        BookAppointmentCubit.get(context).selectedTime
                    ? context.color.whiteColor
                    : context.color.primaryColor),
          ),
        ),
      ),
    );
  }
}
