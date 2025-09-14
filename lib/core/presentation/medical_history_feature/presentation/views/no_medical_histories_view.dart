import 'package:clean_arc/core/presentation/widget/CustomAppBar.dart';
import 'package:clean_arc/core/routing/navigation_helper.dart';
import 'package:clean_arc/core/utils_package/utils_package.dart';
import 'package:flutter/material.dart';

import '../components/NewReventView.dart';
import '../items/CustomDropdownrevent.dart';

@RoutePage()
class NoMedicalHistoriesView extends StatefulWidget {
  static const String path = '/NoMedicalHistoriesView';
  @override
  _NoMedicalHistoriesViewState createState() => _NoMedicalHistoriesViewState();
}

class _NoMedicalHistoriesViewState extends State<NoMedicalHistoriesView> {
  String? selectedUser;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        leadingWidget: AppImages.images.core.png.arrowicon.image(
          width: 98,
          height: 98,
          color: context.color.secondaryColor
        ),
          onBackPressed: () {
            NavigationHelper.pop(context);
          },
          title:
          context.translate.medicalhistory),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              AppImages.images.core.svg.noHistoryData.svg(
                width: 145,
                height: 125,
              ),
              SizedBox(height: 26,),
              TextApp(
                '${context.translate.noData}',
                style: context.textStyle.copyWith(
                    fontSize: AppDimensions.fontSizeLarge,
                    fontWeight: FontWeightHelper.semiBold,
                    color: context.color.titleColor),
              ),
              SizedBox(height: 8,),
              TextApp(
                '${context.translate.addMedicalHistoryMsg}',
                textAlign: TextAlign.center,
                style: context.textStyle.copyWith(
                    fontSize: AppDimensions.fontSizeSmall,
                    fontWeight: FontWeightHelper.regular,
                    color: context.color.gray_A4A7AE),
              ),
              SizedBox(height: 40,),
              CustomButton(
                  width: double.infinity,
                  height: 40,
                  onPressed: () {},
                  title: context.translate.addYourInformation),
            ],
          ),
        ),
      ),
    );
  }
}