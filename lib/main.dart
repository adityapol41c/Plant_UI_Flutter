import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:device_preview/device_preview.dart';
import 'ui/onboarding_screen.dart';

void main() {
  runApp(DevicePreview(
    enabled:true,
    builder: (context) => MyApp(),
  ));
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Onboarding screen',
      home: OnboardingScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
