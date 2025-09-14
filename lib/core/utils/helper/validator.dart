import 'package:easy_localization/easy_localization.dart';

class Validator {
  Validator._();

  static String? validate(String? value) {
    if (value?.isEmpty ?? true) {
      return "LocaleKeys.fieldIsRequired.tr()";
    }
    return null;
  }

  // static String? validateCountry(String? value) {
  //   if (value?.isEmpty ?? true) {
  //     return LocaleKeys.countryIsRequired.tr();
  //   }
  //   return null;
  // }
  //
  // static String? validateCity(String? value) {
  //   if (value?.isEmpty ?? true) {
  //     return LocaleKeys.cityIsRequired.tr();
  //   }
  //   return null;
  // }
  //
  // static String? validateRegion(String? value) {
  //   if (value?.isEmpty ?? true) {
  //     return LocaleKeys.regionIsRequired.tr();
  //   }
  //   return null;
  // }
  //
  // static String? validateGender(String? value) {
  //   if (value?.isEmpty ?? true) {
  //     return LocaleKeys.genderIsRequired.tr();
  //   }
  //   return null;
  // }
  //
  // static String? validatePostalCode(String? value) {
  //   if (value?.isEmpty ?? true) {
  //     return LocaleKeys.postalCodeIsRequired.tr();
  //   }
  //   if (value?.length != 5) {
  //     return LocaleKeys.postalCodeMustBe5Digits.tr();
  //   }
  //   return null;
  // }
  //
  // static String? validateBuildingNumber(String? value) {
  //   if (value?.isEmpty ?? true) {
  //     return LocaleKeys.buildingNumberIsRequired.tr();
  //   }
  //   return null;
  // }
  //
  // static String? validateStreetName(String? value) {
  //   if (value?.isEmpty ?? true) {
  //     return LocaleKeys.streetNameIsRequired.tr();
  //   }
  //   return null;
  // }
  //
  // static String? validateFullAddress(String? value) {
  //   if (value?.isEmpty ?? true) {
  //     return LocaleKeys.fullAddressIsRequired.tr();
  //   }
  //   return null;
  // }
  //
  // static String? validateFirstName(String? value) {
  //   if (value == null || value.isEmpty) {
  //     return LocaleKeys.pleaseEnterYourFirstName.tr();
  //   }
  //   if (value.length < 3) {
  //     return LocaleKeys.mustBeAtLeast3CharactersLong.tr();
  //   }
  //   return null;
  // }
  //
  // static String? validateLastName(String? value) {
  //   if (value == null || value.isEmpty) {
  //     return LocaleKeys.pleaseEnterYourLastName.tr();
  //   }
  //   if (value.length < 3) {
  //     return LocaleKeys.mustBeAtLeast3CharactersLong.tr();
  //   }
  //   return null;
  // }
  //
  // static String? validateDateOfBirth(String? value) {
  //   if (value?.isEmpty ?? true) {
  //     return LocaleKeys.dateOfBirthIsRequired.tr();
  //   }
  //   return null;
  // }
  //
  // static String? validateOTP(String? value) {
  //   if (value?.isEmpty ?? true) {
  //     return LocaleKeys.otpIsRequired.tr();
  //   }
  //   if (value?.length != 5) {
  //     return LocaleKeys.otpMustBe5Digits.tr();
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
  //     return LocaleKeys.pleaseEnterYourCurrentPassword.tr();
  //   }
  //   if (!RegExp(lengthPattern).hasMatch(value)) {
  //     return LocaleKeys.pleaseEnterYourCorrectPassword.tr();
  //   }
  //   if (!RegExp(atLeastOneUpper).hasMatch(value)) {
  //     return LocaleKeys.pleaseEnterYourCorrectPassword.tr();
  //   }
  //   if (!RegExp(atLeastOneLower).hasMatch(value)) {
  //     return LocaleKeys.pleaseEnterYourCorrectPassword.tr();
  //   }
  //   if (!RegExp(atLeastOneDigit).hasMatch(value)) {
  //     return LocaleKeys.pleaseEnterYourCorrectPassword.tr();
  //   }
  //   if (!RegExp(atLeastOneSpecial).hasMatch(value)) {
  //     return LocaleKeys.pleaseEnterYourCorrectPassword.tr();
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
      return "LocaleKeys.passwordIsRequired.tr()";
    }
    if (!RegExp(lengthPattern).hasMatch(value)) {
      return "LocaleKeys.mustBeAtLeast8CharactersLong.tr()";
    }
    if (!RegExp(atLeastOneUpper).hasMatch(value)) {
      return "LocaleKeys.mustContainAtLeastOneUppercaseLetter.tr()";
    }
    if (!RegExp(atLeastOneLower).hasMatch(value)) {
      return "LocaleKeys.mustContainAtLeastOneLowerCase.tr()";
    }
    if (!RegExp(atLeastOneDigit).hasMatch(value)) {
      return "LocaleKeys.mustContainAtLeastOneNumber.tr()";
    }
    if (!RegExp(atLeastOneSpecial).hasMatch(value)) {
      return "LocaleKeys.mustContainAtLeastOneSpecialCharacter.tr()";
    }
    return null;
  }

  static String? validateConfirmPassword(String? value, String? confirm) {
    if (value != confirm) {
      return "LocaleKeys.twoPasswordsMustBeIdentical.tr()";
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
      return "LocaleKeys.enterTheCorrectEmail.tr()";
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
  //     return LocaleKeys.phoneNumberIsRequired.tr();
  //   } else if (!regExp.hasMatch(value??"")) {
  //     return LocaleKeys.phoneNumberIsIncorrect.tr();
  //   }
  //
  //   return null;
  // }
  // static String? validateItalianMobile(String? value) {
  //   String pattern = r'^(\+39)?3[0-9]{9}$';
  //   RegExp regExp = RegExp(pattern);
  //
  //   if (value == null || value.isEmpty) {
  //     return LocaleKeys.phoneNumberIsRequired.tr();
  //   }
  //   if (!value.startsWith('39')) {
  //     return LocaleKeys.mustStartWith39.tr(); //Must start with 39
  //   }
  //   if (value.length != 10) {
  //     return LocaleKeys.phoneNumberLengthMustBe10.tr();
  //   }
  //   if (!regExp.hasMatch(value)) {
  //     return LocaleKeys.phoneNumberIsIncorrect.tr();
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
  //     return LocaleKeys.phoneNumberIsRequired.tr();
  //   }
  //   if (!value.startsWith('1')) {
  //     return LocaleKeys.mustStartWith1.tr(); //Must start with 1
  //   }
  //   if (value.length != 10) {
  //     return LocaleKeys.phoneNumberLengthMustBe10.tr();
  //   }
  //   if (!regExp.hasMatch(value)) {
  //     return LocaleKeys.phoneNumberIsIncorrect.tr();
  //   }
  //   return null;
  // }
  //
  // static String? validateChildName(String? value) {
  //   if (value == null || value.isEmpty) {
  //     return LocaleKeys.childNameIsRequired.tr();
  //   }
  //   return null;
  // }
  //
  // static String? validateChildGender(String? value) {
  //   if (value == null || value.isEmpty) {
  //     return LocaleKeys.childGenderIsRequired.tr();
  //   }
  //   return null;
  // }
  //
  // static String? validateChildAge(String? value) {
  //   if (value == null || value.isEmpty) {
  //     return LocaleKeys.childAgeIsRequired.tr();
  //   }
  //   return null;
  // }

//
// static String? validateMoney(String value) {
//   String pattern = r'(^[0-9]*$)';
//   RegExp regExp = RegExp(pattern);
//   if (value.isEmpty) {
//     return LocaleKeys.numberIsRequired.tr();
//   } else if (!regExp.hasMatch(value)) {
//     return LocaleKeys.numberIsIncorrect.tr();
//   }
//   return null;
// }
//
// static String? validatePriceRange(
//     {required double? fromPrice, required double? toPrice}) {
//   if (fromPrice == null && toPrice == null) {
//     return LocaleKeys.priceRangeMustBeProvided.tr();
//   } else if (fromPrice == null) {
//     return LocaleKeys.makeSureFromPriceIsEntered.tr();
//   } else if (toPrice == null) {
//     return LocaleKeys.makeSureToPriceIsEntered.tr();
//   }
//
//   if (fromPrice > toPrice) {
//     return LocaleKeys.fromPriceMustBeLessThanToPrice.tr();
//   }
//   return null;
// }
}
