import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.cancel, size: 24),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Welcome Back",
            style: TextStyle(
                color: Color(0xFF332E28),
                fontSize: 24,
                fontWeight: FontWeight.w700),
          ),
          Text(
              "Kindly login into your account to gain full\n access to Delfoods catalogue"),
          SizedBox(height: 32),
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
          const Text(
            "Password",
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
            child: TextField(
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.visibility_off),
                ),
              ),
            ),
          ),
          const Text(
            "Forgot Password?",
            textAlign: TextAlign.right,
            style: TextStyle(
                color: Color(0xFFFBAD37),
                fontSize: 14,
                fontWeight: FontWeight.w600),
          ),
          Container(
            width: 376,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: const Color(0xFF959595),
            ),
            child: const Center(
              child: Text(
                "Login",
                style: TextStyle(
                    color: Color(0xFFFFFFFF),
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ),
          Flexible(
            child: RichText(
              text: const TextSpan(
                children: [
                  TextSpan(
                    text: "Don't have an account?",
                    style: TextStyle(
                      color: Color(0xFF5A5A5A),
                    ),
                  ),
                  TextSpan(
                    text: "Create account",
                    style: TextStyle(
                      color: Color(0xFFFA9B0D),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 48),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Divider(
                color: Color(0xFF5A5A5A),
                thickness: 1,
              ),
              Text(
                "Or",
                style: TextStyle(
                  color: Color(0xFF332E28),
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Divider(
                thickness: 1,
                color: Color(0xFFD6D4DD),
              ),
            ],
          ),
          const SizedBox(height: 48),
          Container(
            width: 376,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              border: Border.all(color: Colors.grey, width: 1),
            ),
            child: const Center(
              child: Row(
                children: [
                  Image(
                    image: AssetImage("asset/google.jpg"),
                  ),
                  SizedBox(width: 24),
                  Text(
                    "Sign up with Google",
                    style: TextStyle(
                        color: Color(0xFF5A5A5A),
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 32),
          Container(
            width: 376,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              border: Border.all(color: Colors.grey, width: 1),
            ),
            child: const Center(
              child: Row(
                children: [
                  Image(image: AssetImage("asset/facebook.jpg")),
                  SizedBox(width: 24),
                  Text(
                    "Sign up with Facebook",
                    style: TextStyle(
                        color: Color(0xFF5A5A5A),
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
