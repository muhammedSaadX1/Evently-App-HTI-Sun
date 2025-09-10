import 'package:evently_hti_sun/core/prefs_manager/prefs_manager.dart';
import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier{
  ThemeMode currentTheme = PrefsManager.getSavedTheme() ?? ThemeMode.light;


  void changeAppTheme(ThemeMode newTheme){
    if(currentTheme == newTheme) return;
    currentTheme = newTheme;
    PrefsManager.saveTheme(currentTheme);
    notifyListeners();
  }

  bool get isDarkEnabled=> currentTheme == ThemeMode.dark;


}