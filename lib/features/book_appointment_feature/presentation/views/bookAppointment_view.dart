import 'package:clean_arc/core/presentation/widget/CustomAppBar.dart';
import 'package:clean_arc/core/presentation/widget/custom_dropdown_field.dart';
import 'package:clean_arc/core/utils_package/utils_package.dart';
import 'package:clean_arc/features/book_appointment_feature/presentation/components/AddNewPatientButton.dart';
import 'package:clean_arc/features/relevant_patient/presentation/item/patient_card_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:clean_arc/gen/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
class BookAppointmentScreen extends StatefulWidget {
  const BookAppointmentScreen({super.key});

  @override
  State<BookAppointmentScreen> createState() => _BookAppointmentScreenState();
}

class _BookAppointmentScreenState extends State<BookAppointmentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            CustomAppBar(title: LocaleKeys.bookAppointment.tr()),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: LinearProgressIndicator(
                borderRadius: BorderRadius.all(Radius.circular(12)),
                color: context.color.primaryColor,
                value: 0.30,
                minHeight: 10,
                backgroundColor: context.color.greyCounterBorderColor,
                valueColor: AlwaysStoppedAnimation<Color>(
                  context.color.primaryColor!,
                ),
              ),
            ),
            CustomAppBar(title: LocaleKeys.selectpatients.tr()),
            const SizedBox(height: 10),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(height: 10),
                    ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: 10,
                      itemBuilder: (context, index) => PatientCardItem(
                        description: 'description',
                          isSelected: false, onTap: () {}, title: "title"),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: AddNewPatientButton(
                        onTap: () {},
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomButton(
                width: double.infinity,
                title: LocaleKeys.next.tr(),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => BookAppointmentFormScreen()));
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

// ////////////////////////////////////////////////////////////////

class BookAppointmentFormScreen extends StatefulWidget {
  const BookAppointmentFormScreen({super.key});

  @override
  State<BookAppointmentFormScreen> createState() =>
      _BookAppointmentFormScreenState();
}

class _BookAppointmentFormScreenState extends State<BookAppointmentFormScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            CustomAppBar(title: LocaleKeys.bookAppointment.tr()),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: LinearProgressIndicator(
                borderRadius: BorderRadius.all(Radius.circular(12)),
                color: context.color.primaryColor,
                value: 0.50,
                minHeight: 10,
                backgroundColor: context.color.greyCounterBorderColor,
                valueColor: AlwaysStoppedAnimation<Color>(
                  context.color.primaryColor!,
                ),
              ),
            ),
            const SizedBox(height: 10),
            const SizedBox(height: 10),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      CustomDropdownField(
                        onChanged: (value) {},
                        title: LocaleKeys.selectbranches.tr(),
                        dropDownType: DropDownType.dropDownType,
                      ),
                      SizedBox(height: 12.h),
                      CustomTextField(
                          fillColor: Colors.transparent,
                          hintText: LocaleKeys.selectdate.tr(),
                          showTitle: true,
                          suffixIcon: Icon(
                            IconlyLight.calendar,
                            size: 24,
                            color: context.color.primaryColor,
                          )),
                      SizedBox(height: 12.h),
                      CustomDropdownField(
                        onChanged: (value) {},
                        title: LocaleKeys.selecttest.tr(),
                        dropDownType: DropDownType.dropDownType,
                      ),
                      const SizedBox(height: 30),
                      CustomButton(
                        width: double.infinity,
                        bgColor: context.color.primaryColor,
                        onPressed: () {},
                        title: LocaleKeys.next.tr(),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
