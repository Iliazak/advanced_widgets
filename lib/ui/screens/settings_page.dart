import 'package:advanced_widgets/ui/themes/bloc/theme_bloc.dart';
import 'package:advanced_widgets/ui/themes/theme_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({
    Key? key,
  }) : super(key: key);
  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  _lightTheme(context) {
    BlocProvider.of<ChangeThemeBloc>(context).add(LightThemeEvent());
  }

  _darkTheme(context) {
    BlocProvider.of<ChangeThemeBloc>(context).add(DarkThemeEvent());
  }

  _blueTheme(context) {
    BlocProvider.of<ChangeThemeBloc>(context).add(BlueThemeEvent());
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FilledButton.tonal(
              onPressed: () {
                setState(() {
                  _lightTheme(context);
                });
              },
              child: const Text('Светлая тема')),
          FilledButton.tonal(
              onPressed: () {
                setState(() {
                  _darkTheme(context);
                });
              },
              child: const Text('Темная тема')),
          FilledButton.tonal(
              onPressed: () {
                setState(() {
                  _blueTheme(context);
                });
              },
              child: const Text('Синяя тема')),
        ],
      ),
    );
  }
}
