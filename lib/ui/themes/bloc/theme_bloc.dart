import 'package:advanced_widgets/ui/themes/bloc/theme_state.dart';
import 'package:advanced_widgets/ui/themes/theme_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomMaterialColor {
  final int r;
  final int g;
  final int b;

  CustomMaterialColor(this.r, this.g, this.b);

  MaterialColor get mdColor {
    Map<int, Color> color = {
      50: Color.fromRGBO(r, g, b, .1),
      100: Color.fromRGBO(r, g, b, .2),
      200: Color.fromRGBO(r, g, b, .3),
      300: Color.fromRGBO(r, g, b, .4),
      400: Color.fromRGBO(r, g, b, .5),
      500: Color.fromRGBO(r, g, b, .6),
      600: Color.fromRGBO(r, g, b, .7),
      700: Color.fromRGBO(r, g, b, .8),
      800: Color.fromRGBO(r, g, b, .9),
      900: Color.fromRGBO(r, g, b, 1),
    };
    return MaterialColor(Color.fromRGBO(r, g, b, 1).value, color);
  }
}

abstract class ThemeEvent {
  ThemeData getTheme();
  String getName();
}

class ChangeThemeBloc extends Bloc<ThemeEvent, ChangeThemeState> {
  ChangeThemeBloc()
      : super(ChangeThemeState(
            "initial",
            ThemeData(
                colorScheme: const ColorScheme(
              brightness: Brightness.light,
              primary: Colors.indigo,
              onPrimary: Colors.black,
              // Colors that are not relevant to AppBar in LIGHT mode:
              secondary: Colors.indigo,
              onSecondary: Colors.black,
              background: Colors.yellow,
              onBackground: Colors.black,
              surface: Colors.yellow,
              onSurface: Colors.black,
              error: Colors.red,
              onError: Colors.black,
            )))) {
    on<DarkThemeEvent>((event, emit) =>
        emit(ChangeThemeState(event.getName(), event.getTheme())));
    on<LightThemeEvent>((event, emit) =>
        emit(ChangeThemeState(event.getName(), event.getTheme())));
    on<BlueThemeEvent>((event, emit) =>
        emit(ChangeThemeState(event.getName(), event.getTheme())));
  }
}
