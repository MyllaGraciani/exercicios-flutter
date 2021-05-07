import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '/themes/dark-yellow.theme.dart';
import '/themes/dark.theme.dart';
import '/themes/light.theme.dart';

import '../settings.dart';

class ThemeBloc extends ChangeNotifier {
  var theme = lightTheme();

  ThemeBloc() {
    load();
  }

  change(String color) {
    switch (color) {
      case 'light':
        {
          theme = lightTheme();
          Settings.theme = "light";
          notifyListeners();
          break;
        }

      case 'dark':
        {
          theme = darkTheme();
          Settings.theme = "dark";
          notifyListeners();
          break;
        }

      case 'dark-yellow':
        {
          theme = darkYellowTheme();
          Settings.theme = "dark-yellow";
          notifyListeners();
          break;
        }

      default:
        {
          theme = lightTheme();
          Settings.theme = "light";
          notifyListeners();
          break;
        }
    }
  }

  Future load() async {
    var prefs = await SharedPreferences.getInstance();
    var theme = prefs.getString('theme');
    // if (theme.isEmpty) {
    //   Settings.theme = 'light';
    // } else {
    //   Settings.theme = theme;
    // }
    Settings.theme = theme;
    change(Settings.theme);
  }
}
