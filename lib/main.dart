import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:workout/screens/onboarding.dart';

// void main() => runApp(const MyApp());

void main() {
  debugPrintHitTestResults = true;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OnBoarding(),
    );
  }
}
