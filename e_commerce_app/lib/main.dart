import 'package:e_commerce_app/pages.dart';
import 'package:flutter/material.dart';
import 'dart:ui' show lerpDouble;
import 'dart:ui';

void main() {
  runApp(OnBoarding_Screen());
}

// ignore: camel_case_types
class OnBoarding_Screen extends StatefulWidget {
  const OnBoarding_Screen({super.key});

  @override
  State<OnBoarding_Screen> createState() => _OnBoarding_ScreenState();
}

class _OnBoarding_ScreenState extends State<OnBoarding_Screen> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Pages(),
    );
  }
}
