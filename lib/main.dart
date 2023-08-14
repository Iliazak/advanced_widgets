import 'package:advanced_widgets/ui/screens/main_screen.dart';
import 'package:advanced_widgets/ui/screens/settings_page.dart';
import 'package:advanced_widgets/ui/themes/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  void _handleCallback() {
    themeIndex;
  }

  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: themes[themeIndex],
      home: const MainScreen(),
    );
  }
}
