import 'package:clean_arc/core/routing/navigation_helper.dart';
import 'package:clean_arc/core/utils_package/utils_package.dart';
import 'package:clean_arc/features/Labs_feature/view/labs_view.dart';
import 'package:clean_arc/features/Pharmacies_feature/view/PharmaciesDetailsScreen.dart';
import 'package:clean_arc/features/Pharmacies_feature/view/Pharmacies_view.dart';
import 'package:clean_arc/features/Scan_feature/view/Scan_view.dart';
import 'package:clean_arc/features/auth_feature/domain/model/account_type_model.dart';
import 'package:clean_arc/features/doctor_feature/presentation/view/doctors_view.dart';
import 'package:flutter/material.dart';

List<AccountTypeModel> getUserType(BuildContext context) {
  final List<AccountTypeModel> accountTypes = [
    AccountTypeModel(
        OnTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ScanScreen()),
          );
        },
        image: 'assets/images/core/png/medical-icon_i-cath-lab.png',
        label: context.translate.scan_center),
    AccountTypeModel(
        OnTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => LabsScreen()),
          );
        },
        image: 'assets/images/core/png/raphael_lab.png',
        label: context.translate.lab),

    ///===========================

    AccountTypeModel(
        OnTap: () {},
        image: 'assets/images/core/png/famicons_person-sharp.png',
        label: context.translate.patient),

    ///===========================

    AccountTypeModel(
        OnTap: () {
          NavigationHelper.push(context, DoctorsView());
        },
        image: 'assets/images/core/png/healthicons_doctor-24px.png',
        label: context.translate.doctor),
    AccountTypeModel(
        OnTap: () {},
        image: 'assets/images/core/png/healthicons_nurse.png',
        label: context.translate.nurse),
    AccountTypeModel(
        OnTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => PharmaciesDetailsScreen()),
          );
        },
        image: 'assets/images/core/png/famicons_storefront-sharp.png',
        label: context.translate.rx_market),
    AccountTypeModel(
        OnTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => PharmaciesScreen()),
          );
        },
        image: 'assets/images/core/png/healthicons_pharmacy-24px.png',
        label: context.translate.pharmacy),
  ];
  return accountTypes;
}

List<AccountTypeModel> getUserType2(BuildContext context) {
  final List<AccountTypeModel> accountTypes = [
    AccountTypeModel(
        OnTap: () {
          NavigationHelper.push(context, DoctorsView());
        },
        image: AppImages.images.core.svg.doctors.path,
        label: context.translate.doctors),
    AccountTypeModel(
        OnTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => PharmaciesScreen()),
          );
        },
        image: AppImages.images.core.svg.doctors.path,
        label: context.translate.pharmacys),

    AccountTypeModel(
        OnTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ScanScreen()),
          );
        },
        image: AppImages.images.core.svg.pharma.path,
        label: context.translate.scan_center),
    AccountTypeModel(
        OnTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => LabsScreen()),
          );
        },
        image: AppImages.images.core.svg.labs.path,
        label: context.translate.labs),

    ///===========================

    // AccountTypeModel(
    //     OnTap: () {},
    //     image: 'assets/images/core/png/famicons_person-sharp.png',
    //     label: context.translate.patient),

    ///===========================

    AccountTypeModel(
        OnTap: () {},
        image: AppImages.images.core.svg.nerse.path,
        label: context.translate.homeNurse),
    AccountTypeModel(
        OnTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => PharmaciesDetailsScreen()),
          );
        },
        image: AppImages.images.core.svg.market.path,
        label: context.translate.rx_market),
  ];
  return accountTypes;
}
