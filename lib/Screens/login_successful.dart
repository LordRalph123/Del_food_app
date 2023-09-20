import 'package:flutter/material.dart';

class LoginSuccessful extends StatefulWidget {
  const LoginSuccessful({super.key});

  @override
  State<LoginSuccessful> createState() => _LoginSuccessfulState();
}

class _LoginSuccessfulState extends State<LoginSuccessful> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.check_circle,
              color: Color(0xFFFA9B0D),
              size: 129,
            ),
            const SizedBox(height: 25),
            const Text(
              "Yay, you have successfully\n created your new password",
              style: TextStyle(),
            ),
            const SizedBox(height: 300),
            Container(
              width: 376,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: const Color(0xFFFA9B0D),
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
      ),
    );
  }
}
