import 'package:advanced_widgets/ui/themes/bloc/theme_bloc.dart';
import 'package:flutter/material.dart';

class DarkThemeEvent extends ThemeEvent {
  final ThemeData themeData = ThemeData(
      colorScheme: ColorScheme(
    brightness: Brightness.dark,
    surface: CustomMaterialColor(72, 220, 182).mdColor,
    onSurface: Colors.black,
    // Colors that are not relevant to AppBar in DARK mode:
    primary: Colors.grey,
    onPrimary: Colors.black,
    secondary: Colors.grey,
    onSecondary: Colors.black,
    background: Colors.grey,
    onBackground: Colors.black,
    error: Colors.grey,
    onError: Colors.black,
  ));

  @override
  String getName() {
    return "dark";
  }

  @override
  ThemeData getTheme() {
    return themeData;
  }
}

class LightThemeEvent extends ThemeEvent {
  final ThemeData themeData = ThemeData(
      colorScheme: const ColorScheme(
    brightness: Brightness.light,
    primary: Color(0xFFE6E3AC),
    onPrimary: Colors.black,
    // Colors that are not relevant to AppBar in LIGHT mode:
    secondary: Color(0xFFE6E3AC),
    onSecondary: Colors.black,
    background: Colors.indigo,
    onBackground: Colors.black,
    surface: Colors.indigo,
    onSurface: Colors.black,
    error: Colors.red,
    onError: Colors.black,
  ));

  @override
  String getName() {
    return "light";
  }

  @override
  ThemeData getTheme() {
    return themeData;
  }
}

class BlueThemeEvent extends ThemeEvent {
  final ThemeData themeData = ThemeData(
      colorScheme: const ColorScheme(
    brightness: Brightness.light,
    primary: Colors.blueAccent,
    onPrimary: Colors.black,
    // Colors that are not relevant to AppBar in LIGHT mode:
    secondary: Colors.indigoAccent,
    onSecondary: Colors.black,
    background: Color.fromARGB(255, 51, 57, 86),
    onBackground: Colors.black,
    surface: Color.fromARGB(255, 78, 82, 106),
    onSurface: Colors.black,
    error: Colors.red,
    onError: Colors.black,
  ));

  @override
  String getName() {
    return "blue";
  }

  @override
  ThemeData getTheme() {
    return themeData;
  }
}
