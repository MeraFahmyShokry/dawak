import 'package:easy_localization/easy_localization.dart';

import '../../../gen/locale_keys.g.dart';

enum Gender {
  male,
  female,

}

extension GenderChecker on Gender {
  String name() {
    switch (this) {
      case Gender.male:
        return LocaleKeys.kMale.tr();
      case Gender.female:
        return LocaleKeys.kFemale.tr();
    }
  }


  int id() {
    switch (this) {
      case Gender.male:
        return 1;
      case Gender.female:
        return 2;
    }
  }
}
