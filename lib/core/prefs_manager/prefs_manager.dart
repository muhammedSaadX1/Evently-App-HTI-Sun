import 'package:evently_hti_sun/config/theme/theme_manager.dart';
import 'package:evently_hti_sun/core/resources/constant_manager.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PrefsManager {
  static late SharedPreferences prefs;

  static Future<void> init() async {
    prefs = await SharedPreferences.getInstance();
  }

  static void saveTheme(ThemeMode themeMode) {
    String theme = themeMode == ThemeMode.light ? "Light" : "Dark";
    prefs.setString(CacheConstant.themeKey, theme);
  }

  static ThemeMode? getSavedTheme() {
    String? savedTheme = prefs.getString(CacheConstant.themeKey);
    if (savedTheme == null) {
      return null;
    }
    if (savedTheme == "Light") {
      return ThemeMode.light;
    } else {
      return ThemeMode.dark;
    }
  }

  static void saveLanguage(String language) {
    prefs.setString(CacheConstant.languageKey, language);
  }

  static String? getSavedLanguage(){
    return prefs.getString(CacheConstant.languageKey);
  }
}
