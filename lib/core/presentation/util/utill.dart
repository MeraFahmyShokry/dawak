import 'package:clean_arc/core/data/services/shared_prefs/shared_pref.dart';
import 'package:clean_arc/core/data/services/shared_prefs/shared_prefs_key.dart';

class LocalizationUtil {
  static String getCurrentLanguage() {
    return SharedPref.getString(PrefKeys.language) ?? 'en';
  }
  static int get getCurrentLanguageId {
    switch (getCurrentLanguage()) {
      case 'ar':
        return 2; // Arabic language ID
      case 'en':
        return 1; // English language ID
      default:
        return 1; // Default to English if not specified
    }

  }

  static void setCurrentLanguage(String languageCode) {
    SharedPref.setString(PrefKeys.language, languageCode);
  }

  static bool isArabic() {
    return getCurrentLanguage() == 'ar';
  }

  static bool isEnglish() {
    return getCurrentLanguage() == 'en';
  }
}