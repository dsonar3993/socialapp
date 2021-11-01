import 'dart:convert';
import 'package:socialapp/settings/themes.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Preferences {
  //
  static SharedPreferences? preferences;
  static const String keySelectedTheme = 'key_selected_theme';

  static init() async {
    preferences = await SharedPreferences.getInstance();
  }

  static void saveTheme(AppTheme selectedTheme) async {
    String theme = jsonEncode(selectedTheme.toString());
    preferences?.setString(keySelectedTheme, theme);
  }

  static AppTheme? getTheme() {
    String theme = preferences?.getString(keySelectedTheme) ?? "";
    if (theme == "") {
      return AppTheme.lightTheme;
    }
    return getThemeFromString(jsonDecode(theme));
  }

  static AppTheme? getThemeFromString(String themeString) {
    for (AppTheme theme in AppTheme.values) {
      if (theme.toString() == themeString) {
        return theme;
      }
    }
    return null;
  }
}
