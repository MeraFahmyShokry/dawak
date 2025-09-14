import 'package:clean_arc/core/routing/navigation_helper.dart';
import 'package:clean_arc/core/utils_package/utils_package.dart';
import 'package:clean_arc/features/Labs_feature/view/labs_view.dart';
import 'package:clean_arc/features/Pharmacies_feature/view/PharmaciesDetailsScreen.dart';
import 'package:clean_arc/features/Pharmacies_feature/view/Pharmacies_view.dart';
import 'package:clean_arc/features/Scan_feature/view/Scan_view.dart';
import 'package:clean_arc/features/auth_feature/domain/model/account_type_model.dart';
import 'package:clean_arc/features/doctor_feature/presentation/view/doctors_view.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../gen/locale_keys.g.dart';

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
        label: LocaleKeys.scan_center.tr()),
    AccountTypeModel(
        OnTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => LabsScreen()),
          );
        },
        image: 'assets/images/core/png/raphael_lab.png',
        label: LocaleKeys.lab.tr()),

    ///===========================

    AccountTypeModel(
        OnTap: () {},
        image: 'assets/images/core/png/famicons_person-sharp.png',
        label: LocaleKeys.patient.tr()),

    ///===========================

    AccountTypeModel(
        OnTap: () {
          NavigationHelper.push(context, DoctorsView());
        },
        image: 'assets/images/core/png/healthicons_doctor-24px.png',
        label: LocaleKeys.doctor.tr()),
    AccountTypeModel(
        OnTap: () {},
        image: 'assets/images/core/png/healthicons_nurse.png',
        label: LocaleKeys.nurse.tr()),
    AccountTypeModel(
        OnTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => PharmaciesDetailsScreen()),
          );
        },
        image: 'assets/images/core/png/famicons_storefront-sharp.png',
        label: LocaleKeys.rx_market.tr()),
    AccountTypeModel(
        OnTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => PharmaciesScreen()),
          );
        },
        image: 'assets/images/core/png/healthicons_pharmacy-24px.png',
        label: LocaleKeys.pharmacy.tr()),
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
        label: LocaleKeys.doctors.tr()),
    AccountTypeModel(
        OnTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => PharmaciesScreen()),
          );
        },
        image: AppImages.images.core.svg.doctors.path,
        label: LocaleKeys.pharmacys.tr()),

    AccountTypeModel(
        OnTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ScanScreen()),
          );
        },
        image: AppImages.images.core.svg.pharma.path,
        label: LocaleKeys.scan_center.tr()),
    AccountTypeModel(
        OnTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => LabsScreen()),
          );
        },
        image: AppImages.images.core.svg.labs.path,
        label: LocaleKeys.labs.tr()),

    ///===========================

    // AccountTypeModel(
    //     OnTap: () {},
    //     image: 'assets/images/core/png/famicons_person-sharp.png',
    //     label: LocaleKeys.patien.tr()t.tr()),

    ///===========================

    AccountTypeModel(
        OnTap: () {},
        image: AppImages.images.core.svg.nerse.path,
        label: LocaleKeys.homeNurse.tr()),
    AccountTypeModel(
        OnTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => PharmaciesDetailsScreen()),
          );
        },
        image: AppImages.images.core.svg.market.path,
        label: LocaleKeys.rx_market.tr()),
  ];
  return accountTypes;
}
