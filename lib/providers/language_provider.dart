import 'package:evently_hti_sun/core/prefs_manager/prefs_manager.dart';
import 'package:flutter/material.dart';

class LanguageProvider extends ChangeNotifier{
  String currentLang = PrefsManager.getSavedLanguage() ?? "en";

  void changeAppLang(String newLang){
    if(currentLang == newLang) return;
    currentLang  = newLang;
    PrefsManager.saveLanguage(currentLang);
    notifyListeners();
  }


  bool get isEnglishEnabled=> currentLang == "en";
}