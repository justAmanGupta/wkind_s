import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Color(0x44000000), //or set color with: Color(0xFF0000FF)
    ));
    return MaterialApp(
      theme: ThemeData.light().copyWith(
        primaryColor: Color(0xFFCCCCCC),
        scaffoldBackgroundColor: Color(0xFFFFFFFF),
      ),
      home: InputPage(),
    );
  }
}
