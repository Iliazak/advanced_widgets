import 'package:flutter/material.dart';

class CallbackWidget extends StatefulWidget {
  final Function() callback;

  CallbackWidget({required this.callback});

  @override
  _CallbackWidgetState createState() => _CallbackWidgetState();
}

class _CallbackWidgetState extends State<CallbackWidget> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        setState(() {
          widget.callback();
        });
      },
      child: Text('Press me'),
    );
  }
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  void _handleCallback() {
    print('Callback was called!');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Callback Widget Example')),
        body: Center(
          child: CallbackWidget(callback: _handleCallback),
        ),
      ),
    );
  }
}
