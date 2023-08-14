import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  final Function() onIndexChanged;
  const SettingsPage({super.key, required this.onIndexChanged});
  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

int themeIndex = 0;

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RadioListTile(
            title: const Text('Blue Theme'),
            value: 0,
            groupValue: themeIndex,
            onChanged: _handleThemeChange,
          ),
          RadioListTile(
            title: const Text('Red Theme'),
            value: 1,
            groupValue: themeIndex,
            onChanged: _handleThemeChange,
          ),
          RadioListTile(
            title: const Text('Green Theme'),
            value: 2,
            groupValue: themeIndex,
            onChanged: _handleThemeChange,
          ),
          RadioListTile(
            title: const Text('Purple Theme'),
            value: 3,
            groupValue: themeIndex,
            onChanged: _handleThemeChange,
          ),
        ],
      ),
    );
  }

  void _handleThemeChange(int? value) {
    setState(() {
      themeIndex = value!;
      widget.onIndexChanged;
    });
    print(themeIndex);
  }
}
