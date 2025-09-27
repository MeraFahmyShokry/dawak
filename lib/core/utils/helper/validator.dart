import 'package:easy_localization/easy_localization.dart';

import '../../../gen/locale_keys.g.dart';

class Validator {
  Validator._();

  static String? validate(String? value) {
    if (value?.isEmpty ?? true) {
      return LocaleKeys.fieldIsRequired.tr();
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
  static String? validateGender(String? value) {
    if (value?.isEmpty ?? true) {
      return LocaleKeys.genderIsRequired.tr();
    }
    return null;
  }
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

  static String? validateDateOfBirth(String? value) {
    if (value?.isEmpty ?? true) {
      return LocaleKeys.dateOfBirthIsRequired.tr();
    }
    return null;
  }
  //
  static String? validateOTP(String? value) {
    if (value?.isEmpty ?? true) {
      return LocaleKeys.otpIsRequired.tr();
    }
    if (value?.length != 4) {
      return LocaleKeys.otpMustBe4Digits.tr();
    }
    return null;
  }

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
      return LocaleKeys.passwordIsRequired.tr();
    }
    if (!RegExp(lengthPattern).hasMatch(value)) {
      return LocaleKeys.mustBeAtLeast8CharactersLong.tr();
    }
    if (!RegExp(atLeastOneUpper).hasMatch(value)) {
      return LocaleKeys.mustContainAtLeastOneUppercaseLetter.tr();
    }
    if (!RegExp(atLeastOneLower).hasMatch(value)) {
      return LocaleKeys.mustContainAtLeastOneLowerCase.tr();
    }
    if (!RegExp(atLeastOneDigit).hasMatch(value)) {
      return LocaleKeys.mustContainAtLeastOneNumber.tr();
    }
    if (!RegExp(atLeastOneSpecial).hasMatch(value)) {
      return LocaleKeys.mustContainAtLeastOneSpecialCharacter.tr();
    }
    return null;
  }

  static String? validateConfirmPassword(String? value, String? confirm) {
    if (value != confirm) {
      return LocaleKeys.twoPasswordsMustBeIdentical.tr();
    }
    return null;
  }

  static String? validateEmail(String? value) {
    // Updated regex pattern
    String pattern =
        r'^[a-zA-Z][a-zA-Z0-9\+\.\_\%\-\+]{0,255}\@[a-zA-Z][a-zA-Z0-9\-]{0,63}\.[a-zA-Z]{2,}$';
    RegExp regex = RegExp(pattern);

    if (value == null || value.isEmpty) {
      return LocaleKeys.fieldIsRequired.tr();
    }
    if (!regex.hasMatch(value)) {
      return LocaleKeys.enterTheCorrectEmail.tr();
    } else {
      return null;
    }
  }


  static String? validateEgyptianMobile(String? value) {
    String pattern = r'^01[0-9]{9}$';
    RegExp regExp = RegExp(pattern);

    if (value == null || value.isEmpty) {
      return LocaleKeys.phoneNumberIsRequired.tr();
    }
    if (!value.startsWith('01')) {
      return LocaleKeys.mustStartWith01.tr();
    }
    if (value.length != 11) {
      return LocaleKeys.phoneNumberLengthMustBe11.tr();
    }
    if (!regExp.hasMatch(value)) {
      return LocaleKeys.phoneNumberIsIncorrect.tr();
    }
    return null;
  }

  static String? validateNationalId(String? value) {
    if (value == null || value.isEmpty) {
      return LocaleKeys.nationalIdIsRequired.tr();
    }
    if (value.length != 14) {
      return LocaleKeys.nationalIdLengthMustBe14.tr();
    }
    return null;
  }

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
