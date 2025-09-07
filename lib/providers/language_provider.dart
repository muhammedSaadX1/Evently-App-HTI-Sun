import 'package:flutter/material.dart';

class LanguageProvider extends ChangeNotifier{
  String currentLang = "en";

  void changeCurrentLang(String newLang){
    if(currentLang == newLang) return;
    currentLang  = newLang;
    notifyListeners();
  }


  bool get isEnglishEnabled=> currentLang == "en";
}