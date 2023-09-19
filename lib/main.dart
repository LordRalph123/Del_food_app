import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'Screens/Onboarding/OnboardingScreen.dart';

void main() => runApp(const Onboarding());

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: IntroPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
