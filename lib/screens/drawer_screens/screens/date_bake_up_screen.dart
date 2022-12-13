import 'package:flutter/material.dart';

class DateBakeUpScreen extends StatelessWidget {
  const DateBakeUpScreen({Key? key}) : super(key: key);
  static String dateBakeUpScreenRoute = 'date bake up screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Date bake up screen',
          style: TextStyle(
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
