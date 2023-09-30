import 'package:flutter/material.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  TextEditingController _controller = TextEditingController();
  bool _isFilled = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.arrow_back, size: 24),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(26, 32, 26, 100),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Forgot your Password?",
                style: TextStyle(
                    color: Color(0xFF332E28),
                    fontSize: 24,
                    fontWeight: FontWeight.w700),
              ),
              const Text(
                "Don't worry, in just a few simple steps your\n account will be back in the game",
                style: TextStyle(fontSize: 14, color: Colors.black),
              ),
              const SizedBox(height: 54),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 14),
                  Text(
                    "Email address",
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xFF5A5A5A),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 3),
              Container(
                width: 376,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(color: Colors.grey, width: 1),
                ),
                child: TextField(
                  controller: _controller,
                  decoration: const InputDecoration(
                    hintText: "myemail@gmail.com",
                    hintStyle: TextStyle(
                        fontSize: 14,
                        color: Color(0xFF5A5A5A),
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              const SizedBox(height: 300),
              MaterialButton(
                color: _isFilled
                    ? const Color(0xFFFA9B0D)
                    : const Color(0xFF959595),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                onPressed: () {},
                child: Container(
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
