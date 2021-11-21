/// How to use this :
/// 1- Make object from Themes Class (ex : Themes themes = new Themes(lightTheme:ThemeData(...), darkTheme:ThemeData(...));)
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
  final ThemeData lightTheme;
  final ThemeData darkTheme;
  Themes({required this.lightTheme, required this.darkTheme});
}

class ThemeService {
  final _box = GetStorage();
  final _key = 'isDarkMode';

  ThemeMode get theme => _loadThemeFromBox() ? ThemeMode.dark : ThemeMode.light;

  bool _loadThemeFromBox() => _box.read(_key) ?? false;
  _saveThemeToBox(bool isDarkMode) => _box.write(_key, isDarkMode);

  void switchTheme() {
    Get.changeThemeMode(_loadThemeFromBox() ? ThemeMode.light : ThemeMode.dark);
    _saveThemeToBox(!_loadThemeFromBox());
  }
}
