import 'package:flutter/material.dart';

class LocaleProvider extends ChangeNotifier
{
  String currentLang = 'en';

  void changeLanguage(String lang)//ar
  {
    currentLang = lang; //ar
    notifyListeners();
  }
}