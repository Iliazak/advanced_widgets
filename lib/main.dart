import 'package:advanced_widgets/ui/screens/main_screen.dart';
import 'package:advanced_widgets/ui/themes/bloc/theme_bloc.dart';
import 'package:advanced_widgets/ui/themes/bloc/theme_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ChangeThemeBloc(),
      child: BlocBuilder<ChangeThemeBloc, ChangeThemeState>(
          builder: (context, state) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: state.changeTheme,
          home: const MainScreen(),
        );
      }),
    );
  }
}
