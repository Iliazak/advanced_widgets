import 'package:flutter/material.dart';

class WeatherPage extends StatefulWidget {
  const WeatherPage({super.key});

  @override
  State<WeatherPage> createState() => _WeatherPageState();
}

class _WeatherPageState extends State<WeatherPage> {
  double _value = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Center(
            child: Slider(
          min: 0.0,
          max: 3.0,
          activeColor: Colors.purple,
          inactiveColor: Colors.purple.shade100,
          thumbColor: Colors.pink,
          value: _value,
          onChanged: (value) {
            setState(() {
              _value = value;
            });
          },
        )),
      ],
    );
  }
}
