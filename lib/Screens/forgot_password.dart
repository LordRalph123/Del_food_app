import 'package:flutter/material.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back, size: 24),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "New Password",
            style: TextStyle(
                color: Color(0xFF332E28),
                fontSize: 24,
                fontWeight: FontWeight.w700),
          ),
          const Text(
            "Don't worry, in just a few simple steps your\n account will be back in the game",
            style: TextStyle(),
          ),
          const SizedBox(height: 54),
          const Text(
            "Email address",
            style: TextStyle(),
          ),
          const SizedBox(height: 3),
          Container(
            width: 376,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              border: Border.all(color: Colors.grey, width: 1),
            ),
            child: const TextField(),
          ),
          const SizedBox(height: 25),
          Container(
            width: 376,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: const Color(0xFF959595),
            ),
            child: const Center(
              child: Text(
                "Continue",
                style: TextStyle(
                    color: Color(0xFFFFFFFF),
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
