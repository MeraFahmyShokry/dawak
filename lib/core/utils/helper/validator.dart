import 'package:easy_localization/easy_localization.dart';

class Validator {
  Validator._();

  static String? validate(String? value) {
    if (value?.isEmpty ?? true) {
      return "LocaleKeys.fieldIsRequire.tr()d.tr()";
    }
    return null;
  }

  // static String? validateCountry(String? value) {
  //   if (value?.isEmpty ?? true) {
  //     return LocaleKeys.countryIsRequire.tr()d.tr();
  //   }
  //   return null;
  // }
  //
  // static String? validateCity(String? value) {
  //   if (value?.isEmpty ?? true) {
  //     return LocaleKeys.cityIsRequire.tr()d.tr();
  //   }
  //   return null;
  // }
  //
  // static String? validateRegion(String? value) {
  //   if (value?.isEmpty ?? true) {
  //     return LocaleKeys.regionIsRequire.tr()d.tr();
  //   }
  //   return null;
  // }
  //
  // static String? validateGender(String? value) {
  //   if (value?.isEmpty ?? true) {
  //     return LocaleKeys.genderIsRequire.tr()d.tr();
  //   }
  //   return null;
  // }
  //
  // static String? validatePostalCode(String? value) {
  //   if (value?.isEmpty ?? true) {
  //     return LocaleKeys.postalCodeIsRequire.tr()d.tr();
  //   }
  //   if (value?.length != 5) {
  //     return LocaleKeys.postalCodeMustBe5Digit.tr()s.tr();
  //   }
  //   return null;
  // }
  //
  // static String? validateBuildingNumber(String? value) {
  //   if (value?.isEmpty ?? true) {
  //     return LocaleKeys.buildingNumberIsRequire.tr()d.tr();
  //   }
  //   return null;
  // }
  //
  // static String? validateStreetName(String? value) {
  //   if (value?.isEmpty ?? true) {
  //     return LocaleKeys.streetNameIsRequire.tr()d.tr();
  //   }
  //   return null;
  // }
  //
  // static String? validateFullAddress(String? value) {
  //   if (value?.isEmpty ?? true) {
  //     return LocaleKeys.fullAddressIsRequire.tr()d.tr();
  //   }
  //   return null;
  // }
  //
  // static String? validateFirstName(String? value) {
  //   if (value == null || value.isEmpty) {
  //     return LocaleKeys.pleaseEnterYourFirstNam.tr()e.tr();
  //   }
  //   if (value.length < 3) {
  //     return LocaleKeys.mustBeAtLeast3CharactersLon.tr()g.tr();
  //   }
  //   return null;
  // }
  //
  // static String? validateLastName(String? value) {
  //   if (value == null || value.isEmpty) {
  //     return LocaleKeys.pleaseEnterYourLastNam.tr()e.tr();
  //   }
  //   if (value.length < 3) {
  //     return LocaleKeys.mustBeAtLeast3CharactersLon.tr()g.tr();
  //   }
  //   return null;
  // }
  //
  // static String? validateDateOfBirth(String? value) {
  //   if (value?.isEmpty ?? true) {
  //     return LocaleKeys.dateOfBirthIsRequire.tr()d.tr();
  //   }
  //   return null;
  // }
  //
  // static String? validateOTP(String? value) {
  //   if (value?.isEmpty ?? true) {
  //     return LocaleKeys.otpIsRequire.tr()d.tr();
  //   }
  //   if (value?.length != 5) {
  //     return LocaleKeys.otpMustBe5Digit.tr()s.tr();
  //   }
  //   return null;
  // }

  //
  // static String? validateRestPassword(String value) {
  //   String atLeastOneUpper = r'^(?=.*[A-Z])';
  //   String atLeastOneLower = r'^(?=.*[a-z])';
  //   String atLeastOneDigit = r'^(?=.*?[0-9])';
  //   String atLeastOneSpecial = r'^(?=.*?[!@#\$&*~?%^])';
  //   String lengthPattern = r'^.{8,}';
  //
  //   if (value.isEmpty) {
  //     return LocaleKeys.pleaseEnterYourCurrentPasswor.tr()d.tr();
  //   }
  //   if (!RegExp(lengthPattern).hasMatch(value)) {
  //     return LocaleKeys.pleaseEnterYourCorrectPasswor.tr()d.tr();
  //   }
  //   if (!RegExp(atLeastOneUpper).hasMatch(value)) {
  //     return LocaleKeys.pleaseEnterYourCorrectPasswor.tr()d.tr();
  //   }
  //   if (!RegExp(atLeastOneLower).hasMatch(value)) {
  //     return LocaleKeys.pleaseEnterYourCorrectPasswor.tr()d.tr();
  //   }
  //   if (!RegExp(atLeastOneDigit).hasMatch(value)) {
  //     return LocaleKeys.pleaseEnterYourCorrectPasswor.tr()d.tr();
  //   }
  //   if (!RegExp(atLeastOneSpecial).hasMatch(value)) {
  //     return LocaleKeys.pleaseEnterYourCorrectPasswor.tr()d.tr();
  //   }
  //   return null;
  // }
  //
  static String? validatePassword(String? value) {
    String atLeastOneUpper = r'^(?=.*[A-Z])';
    String atLeastOneLower = r'^(?=.*[a-z])';
    String atLeastOneDigit = r'^(?=.*?[0-9])';
    String atLeastOneSpecial = r'^(?=.*?[!@#\$&*~?%^])';
    String lengthPattern = r'^.{8,}';
    if (value == null || value.isEmpty) {
      return "LocaleKeys.passwordIsRequire.tr()d.tr()";
    }
    if (!RegExp(lengthPattern).hasMatch(value)) {
      return "LocaleKeys.mustBeAtLeast8CharactersLon.tr()g.tr()";
    }
    if (!RegExp(atLeastOneUpper).hasMatch(value)) {
      return "LocaleKeys.mustContainAtLeastOneUppercaseLette.tr()r.tr()";
    }
    if (!RegExp(atLeastOneLower).hasMatch(value)) {
      return "LocaleKeys.mustContainAtLeastOneLowerCas.tr()e.tr()";
    }
    if (!RegExp(atLeastOneDigit).hasMatch(value)) {
      return "LocaleKeys.mustContainAtLeastOneNumbe.tr()r.tr()";
    }
    if (!RegExp(atLeastOneSpecial).hasMatch(value)) {
      return "LocaleKeys.mustContainAtLeastOneSpecialCharacte.tr()r.tr()";
    }
    return null;
  }

  static String? validateConfirmPassword(String? value, String? confirm) {
    if (value != confirm) {
      return "LocaleKeys.twoPasswordsMustBeIdentica.tr()l.tr()";
    }
    return null;
  }

  static String? validateEmail(String? value) {
    // Updated regex pattern
    String pattern =
        r'^[a-zA-Z][a-zA-Z0-9\+\.\_\%\-\+]{0,255}\@[a-zA-Z][a-zA-Z0-9\-]{0,63}\.[a-zA-Z]{2,}$';
    RegExp regex = RegExp(pattern);

    if (value == null || value.isEmpty) {
      return null;
    }
    if (!regex.hasMatch(value)) {
      return "LocaleKeys.enterTheCorrectEmai.tr()l.tr()";
    } else {
      return null;
    }
  }

  // static String? validateItalianMobile(String? value) {
  //   // Define a regular expression for Italian mobile numbers.
  //   String pattern = r'^(\+39)?3[0-9]{9}$';
  //   RegExp regExp = RegExp(pattern);
  //
  //   if (value?.isEmpty??true) {
  //     return LocaleKeys.phoneNumberIsRequire.tr()d.tr();
  //   } else if (!regExp.hasMatch(value??"")) {
  //     return LocaleKeys.phoneNumberIsIncorrec.tr()t.tr();
  //   }
  //
  //   return null;
  // }
  // static String? validateItalianMobile(String? value) {
  //   String pattern = r'^(\+39)?3[0-9]{9}$';
  //   RegExp regExp = RegExp(pattern);
  //
  //   if (value == null || value.isEmpty) {
  //     return LocaleKeys.phoneNumberIsRequire.tr()d.tr();
  //   }
  //   if (!value.startsWith('39')) {
  //     return LocaleKeys.mustStartWith3.tr()9.tr(); //Must start with 39
  //   }
  //   if (value.length != 10) {
  //     return LocaleKeys.phoneNumberLengthMustBe1.tr()0.tr();
  //   }
  //   if (!regExp.hasMatch(value)) {
  //     return LocaleKeys.phoneNumberIsIncorrec.tr()t.tr();
  //   }
  //
  //   return null;
  // }
  //
  // static String? validateEgyptianMobile(String? value) {
  //   String pattern = r'^[1][0-9]{9}$';
  //   RegExp regExp = RegExp(pattern);
  //
  //   if (value == null || value.isEmpty) {
  //     return LocaleKeys.phoneNumberIsRequire.tr()d.tr();
  //   }
  //   if (!value.startsWith('1')) {
  //     return LocaleKeys.mustStartWith.tr()1.tr(); //Must start with 1
  //   }
  //   if (value.length != 10) {
  //     return LocaleKeys.phoneNumberLengthMustBe1.tr()0.tr();
  //   }
  //   if (!regExp.hasMatch(value)) {
  //     return LocaleKeys.phoneNumberIsIncorrec.tr()t.tr();
  //   }
  //   return null;
  // }
  //
  // static String? validateChildName(String? value) {
  //   if (value == null || value.isEmpty) {
  //     return LocaleKeys.childNameIsRequire.tr()d.tr();
  //   }
  //   return null;
  // }
  //
  // static String? validateChildGender(String? value) {
  //   if (value == null || value.isEmpty) {
  //     return LocaleKeys.childGenderIsRequire.tr()d.tr();
  //   }
  //   return null;
  // }
  //
  // static String? validateChildAge(String? value) {
  //   if (value == null || value.isEmpty) {
  //     return LocaleKeys.childAgeIsRequire.tr()d.tr();
  //   }
  //   return null;
  // }

//
// static String? validateMoney(String value) {
//   String pattern = r'(^[0-9]*$)';
//   RegExp regExp = RegExp(pattern);
//   if (value.isEmpty) {
//     return LocaleKeys.numberIsRequire.tr()d.tr();
//   } else if (!regExp.hasMatch(value)) {
//     return LocaleKeys.numberIsIncorrec.tr()t.tr();
//   }
//   return null;
// }
//
// static String? validatePriceRange(
//     {required double? fromPrice, required double? toPrice}) {
//   if (fromPrice == null && toPrice == null) {
//     return LocaleKeys.priceRangeMustBeProvide.tr()d.tr();
//   } else if (fromPrice == null) {
//     return LocaleKeys.makeSureFromPriceIsEntere.tr()d.tr();
//   } else if (toPrice == null) {
//     return LocaleKeys.makeSureToPriceIsEntere.tr()d.tr();
//   }
//
//   if (fromPrice > toPrice) {
//     return LocaleKeys.fromPriceMustBeLessThanToPric.tr()e.tr();
//   }
//   return null;
// }
}
