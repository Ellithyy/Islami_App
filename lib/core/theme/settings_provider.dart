import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingsProvider extends ChangeNotifier {
  String currentLang = 'en';
  ThemeMode currentTheme = ThemeMode.dark;

  void changeLang(String newLang) {
    if (currentLang == newLang) return;
    currentLang = newLang;
    notifyListeners();
  }

  bool isDark() {
    return currentTheme == ThemeMode.dark;
  }

  String getBackGround() {
    return currentTheme == ThemeMode.dark
        ? 'assets/images/dark_bg.png'
        : 'assets/images/default_bg.png';
  }

  String getSebhaHeadImage() {
    return currentTheme == ThemeMode.dark
        ? 'assets/images/head_sebha_dark.png'
        : 'assets/images/head_sebha_logo.png';
  }

  String getSebhaBodyImage() {
    return currentTheme == ThemeMode.dark
        ? 'assets/images/body_sebha_dark.png'
        : 'assets/images/body_sebha_logo.png';
  }

  String getSplashImage() {
    return currentTheme == ThemeMode.dark
        ? 'assets/images/splash_dark.png'
        : 'assets/images/splash@3x.png';
  }

  void changeTheme(ThemeMode newThemeMode) {
    if (currentTheme == newThemeMode) return;
    currentTheme = newThemeMode;
    notifyListeners();
  }
}
