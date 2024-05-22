import 'package:flutter/material.dart';
import 'package:onboarding/Home/dashboardscreen.dart';
import 'package:onboarding/on-boarding%20Screen/onboarding.dart';
import 'package:onboarding/spash%20screen/screen.dart';

void main(List<String> args) {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: dashboard(),
    );
  }
}
