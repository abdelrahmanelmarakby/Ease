/// How to use this :
/// 1- add get and get_storage to you pubspec.yaml file
/* 2- use GetMaterialApp instead of MaterialApp and add this
GetMaterialApp(
        title: "theme app",
        home: YourHomeScreen(),
        theme: Themes.light,
        darkTheme: Themes.dark,
        themeMode: ThemeService().theme,
      ),*/
///3- change theme like this : ThemeService().switchTheme();


import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
class Themes {
  static final light = ThemeData.light().copyWith();
  static final dark = ThemeData.dark().copyWith();
}

class ThemeService {
  var _box = GetStorage();
  var _key = 'isDarkMode';

  ThemeMode get theme => _loadThemeFromBox() ? ThemeMode.dark : ThemeMode.light;

  bool _loadThemeFromBox() => _box.read(_key) ?? false;
  _saveThemeToBox(bool isDarkMode) => _box.write(_key, isDarkMode);

  void switchTheme() {
    print("clicked");
    Get.changeThemeMode(_loadThemeFromBox() ? ThemeMode.light : ThemeMode.dark);
    _saveThemeToBox(!_loadThemeFromBox());
  }
}
