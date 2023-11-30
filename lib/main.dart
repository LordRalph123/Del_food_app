import 'package:flutter/material.dart';
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
}//j
//ho