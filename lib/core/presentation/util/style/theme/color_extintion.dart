import 'package:clean_arc/core/utils_package/utils_package.dart';
import 'package:flutter/material.dart';

class MyColors extends ThemeExtension<MyColors> {
  const MyColors(
      {
        required this.blue_BEDAFF,
        required this.white_F2F2F2,
        required this.green_15A042,
        required this.gray_A4A7AE,
        required this.green_15A0421A,
      required this.gray_717680,
        required this.gray_41465180,
        required this.black,
      required this.mainColor,
      required this.redColor,
      required this.darkRedColor,
      required this.darkBlue,
      required this.darkGreenColor,
      required this.secondaryColor,
      required this.pinkColor,
      required this.fillColor,
      required this.grayColor,
      required this.blueColor,
      required this.descriptionColor,
      required this.titleColor,
      required this.orangeColor,
      // required this.blueGreenDark,
      required this.primaryColor,
      required this.textColor,
      required this.hintColor,
      required this.borderColor,
      required this.navBarbg,
      required this.navBarSelectedTab,
      required this.whiteColor,
      required this.containerShadow2,
      required this.containerLinear1,
      required this.containerLinear2,
      required this.darkBlackBlueColor,
      required this.starYellowColor,
      required this.skyBlueColor,
      required this.greyCounterBorderColor,
      required this.hintColorLight,
      required this.lightBlackColor,
      required this.lightGrey2Color});

  final Color? mainColor;
  final Color? blue_BEDAFF;
  final Color? white_F2F2F2;
  final Color? black;
  final Color? green_15A0421A;
  final Color? green_15A042;
  final Color? gray_A4A7AE;
  final Color? gray_717680;
  final Color? gray_41465180;
  final Color? redColor;
  final Color? pinkColor;
  final Color? darkRedColor;
  final Color? darkBlue;
  final Color? darkGreenColor;
  final Color? secondaryColor;
  final Color? fillColor;
  final Color? descriptionColor;
  final Color? titleColor;
  final Color? blueColor;
  final Color? grayColor;

  // final Color? blueGreenDark;
  final Color? orangeColor;
  final Color? primaryColor;
  final Color? textColor;
  final Color? hintColor;
  final Color? borderColor;
  final Color? navBarbg;
  final Color? navBarSelectedTab;
  final Color? whiteColor;
  final Color? containerShadow2;
  final Color? containerLinear1;
  final Color? containerLinear2;
  final Color? darkBlackBlueColor;
  final Color? starYellowColor;
  final Color? skyBlueColor;
  final Color? greyCounterBorderColor;
  final Color? hintColorLight;
  final Color? lightBlackColor;
  final Color? lightGrey2Color;

  @override
  ThemeExtension<MyColors> copyWith(
      {Color? pinkColor,
      Color? mainColor,
      Color? black,
      Color? gray_A4A7AE,
      Color? gray_717680,
      Color? redColor,
      Color? darkRedColor,
      Color? darkGreenColor,
      Color? secondaryColor,
      Color? darkBlue,
      Color? blueColor,
      Color? fillColor,
      Color? descriptionColor,
      Color? titleColor,
      Color? grayColor,
      Color? blueGreenDark,
      Color? borderColor,
      Color? blueGreenLight,
      Color? textColor,
      Color? textFormBorder,
      Color? navBarbg,
      Color? navBarSelectedTab,
      Color? containerShadow1,
      Color? containerShadow2,
      Color? containerLinear1,
      Color? orangeLight,
      Color? darkBlackBlueColor,
      Color? starYellowColor,
      Color? skyBlueColor,
      Color? greyCounterBorderColor,
      Color? hintColorLight,
      Color? lightBlackColor,
      Color? lightGrey2Color}) {
    return MyColors(
        black: black,
        pinkColor: pinkColor,
        mainColor: mainColor,
        redColor: redColor,
        darkRedColor: darkRedColor,
        darkBlue: darkBlue,
        darkGreenColor: darkGreenColor,
        secondaryColor: secondaryColor,
        fillColor: fillColor,
        descriptionColor: descriptionColor,
        titleColor: titleColor,
        grayColor: grayColor,
        blueColor: blueColor,
        borderColor: borderColor,
        // blueGreenDark: blueGreenDark,
        primaryColor: blueGreenLight,
        textColor: textColor,
        hintColor: textFormBorder,
        navBarbg: navBarbg,
        navBarSelectedTab: navBarSelectedTab,
        whiteColor: containerShadow1,
        containerShadow2: containerShadow2,
        containerLinear1: containerLinear1,
        containerLinear2: containerLinear2,
        orangeColor: orangeLight,
        darkBlackBlueColor: darkBlackBlueColor,
        starYellowColor: starYellowColor,
        skyBlueColor: skyBlueColor,
        greyCounterBorderColor: greyCounterBorderColor,
        hintColorLight: hintColorLight,
        lightBlackColor: lightBlackColor,
        lightGrey2Color: lightGrey2Color,
        gray_A4A7AE: gray_A4A7AE,
        gray_717680: gray_717680, gray_41465180: gray_41465180, green_15A0421A: green_15A0421A, green_15A042: green_15A042, white_F2F2F2: white_F2F2F2, blue_BEDAFF: blue_BEDAFF,);
  }

  @override
  ThemeExtension<MyColors> lerp(
    covariant ThemeExtension<MyColors>? other,
    double t,
  ) {
    if (other is! MyColors) {
      return this;
    }
    return MyColors(
        mainColor: mainColor,
        darkBlue: darkBlue,
        redColor: redColor,
        darkRedColor: darkRedColor,
        darkGreenColor: darkGreenColor,
        secondaryColor: secondaryColor,
        fillColor: fillColor,
        pinkColor: pinkColor,
        descriptionColor: descriptionColor,
        titleColor: titleColor,
        grayColor: grayColor,
        blueColor: blueColor,
        borderColor: borderColor,
        // blueGreenDark: blueGreenDark,
        primaryColor: primaryColor,
        textColor: textColor,
        hintColor: hintColor,
        navBarbg: navBarbg,
        navBarSelectedTab: navBarSelectedTab,
        whiteColor: whiteColor,
        containerShadow2: containerShadow2,
        containerLinear1: containerLinear1,
        containerLinear2: containerLinear2,
        orangeColor: orangeColor,
        darkBlackBlueColor: darkBlackBlueColor,
        starYellowColor: starYellowColor,
        skyBlueColor: skyBlueColor,
        greyCounterBorderColor: greyCounterBorderColor,
        hintColorLight: hintColorLight,
        lightBlackColor: lightBlackColor,
        lightGrey2Color: lightGrey2Color,
        black: black,
        gray_A4A7AE: gray_A4A7AE,
        gray_717680: gray_717680, gray_41465180:gray_41465180, green_15A0421A: green_15A0421A, green_15A042: green_15A042, white_F2F2F2: white_F2F2F2, blue_BEDAFF: blue_BEDAFF,);
  }

  static const MyColors dark = MyColors(
      pinkColor: ColorsDark.pinkColor,
      darkBlue: ColorsDark.darkBlue,
      fillColor: ColorsDark.fillColor,
      redColor: ColorsDark.redColor,
      mainColor: ColorsDark.mainColor,
      darkRedColor: ColorsDark.darkRedColor,
      darkGreenColor: ColorsDark.darkGreenColor,
      secondaryColor: ColorsDark.secondaryColor,
      grayColor: ColorsDark.grayDark,
      descriptionColor: ColorsDark.descriptionColor,
      titleColor: ColorsDark.titleColor,
      blueColor: ColorsDark.blueLight,
      // blueGreenDark: ColorsDark.blueDark,
      primaryColor: ColorsDark.blueLight,
      borderColor: ColorsDark.borderColorDark,
      textColor: ColorsDark.white,
      hintColor: ColorsDark.hintColorDark,
      navBarbg: ColorsDark.navBarDark,
      navBarSelectedTab: ColorsDark.white,
      whiteColor: ColorsDark.black1,
      containerShadow2: ColorsDark.textsecondary,
      containerLinear1: ColorsDark.black1,
      containerLinear2: ColorsDark.textsecondary,
      orangeColor: ColorsDark.orangeDark,
      darkBlackBlueColor: ColorsDark.darkBlackBlueColor,
      starYellowColor: ColorsDark.starYellowColor,
      skyBlueColor: ColorsDark.skyBlueColor,
      greyCounterBorderColor: ColorsDark.greyCounterBorderColor,
      hintColorLight: ColorsDark.hintColorDark,
      lightBlackColor: ColorsDark.lightBlackColor,
      lightGrey2Color: ColorsDark.lightGrey2,
      black: ColorsDark.black,
      gray_A4A7AE: ColorsDark.gray_A4A7AE,
      gray_717680: ColorsDark.gray_717680, gray_41465180: ColorsDark.gray_41465180, green_15A0421A: ColorsDark.green_15A0421A, green_15A042: ColorsDark.green_15A042, white_F2F2F2: ColorsDark.white_F2F2F2, blue_BEDAFF: ColorsDark.blue_BEDAFF);

  static const MyColors light = MyColors(
      mainColor: ColorsLight.mainColor,
      darkBlue: ColorsLight.darkBlue,
      redColor: ColorsLight.redColor,
      pinkColor: ColorsLight.pinkColor,
      fillColor: ColorsLight.fillColor,
      darkRedColor: ColorsLight.darkRedColor,
      darkGreenColor: ColorsLight.darkGreenColor,
      secondaryColor: ColorsLight.secondaryColor,
      grayColor: ColorsLight.grayLight,
      descriptionColor: ColorsLight.descriptionColor,
      titleColor: ColorsLight.titleColor,
      blueColor: ColorsLight.blueLight,
      borderColor: ColorsLight.borderColorLight,
      // blueGreenDark: ColorsLight.greenDark,
      primaryColor: ColorsLight.primaryColor,
      textColor: ColorsLight.black10,
      hintColor: ColorsLight.hintColorLight,
      navBarbg: ColorsLight.mainColor,
      navBarSelectedTab: ColorsLight.greenDark,
      whiteColor: ColorsLight.white,
      containerShadow2: ColorsLight.white,
      containerLinear1: ColorsLight.greenDark,
      containerLinear2: ColorsLight.primaryColor,
      orangeColor: ColorsLight.orangeLight,
      darkBlackBlueColor: ColorsLight.darkBlackBlueColor,
      starYellowColor: ColorsLight.starYellowColor,
      skyBlueColor: ColorsLight.skyBlueColor,
      greyCounterBorderColor: ColorsLight.greyCounterBorderColor,
      hintColorLight: ColorsLight.hintColorLight,
      lightBlackColor: ColorsLight.lightBlackColor,
      lightGrey2Color: ColorsLight.lightGrey2,
      black: ColorsLight.black,
      gray_A4A7AE: ColorsLight.gray_A4A7AE,
      gray_717680: ColorsLight.gray_717680, gray_41465180: ColorsLight.gray_41465180, green_15A0421A: ColorsLight.green_15A0421A, green_15A042: ColorsLight.green_15A042, white_F2F2F2: ColorsLight.white_F2F2F2, blue_BEDAFF: ColorsLight.blue_BEDAFF);
}
