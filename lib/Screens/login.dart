import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _controller = TextEditingController();
  bool _isFilled = false;
  @override
  void initState() {
    super.initState();

    _controller.addListener(() {
      if (_controller.text.isNotEmpty && !_isFilled) {
        setState(() {
          _isFilled = true;
        });
      } else if (_controller.text.isEmpty && _isFilled) {
        setState(() {
          _isFilled = false;
        });
      }
    });
  }

  bool _isHidden = true;

  void _toggleVisibility() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.cancel, size: 24),
          ),
          backgroundColor: Colors.white,
          elevation: 0.00,
        ),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(26, 32, 26, 100),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Welcome Back",
                style: TextStyle(
                    color: Color(0xFF332E28),
                    fontSize: 24,
                    fontWeight: FontWeight.w700),
              ),
              const Text(
                  "Kindly login into your account to gain full\n access to Delfoods catalogue"),
              const SizedBox(height: 32),
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
                child: TextField(controller: _controller),
              ),
              const SizedBox(height: 25),
              const Text(
                "Password",
                style: TextStyle(fontSize: 12),
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
                  obscureText: _isHidden,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 15.0),
                    border: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    suffixIcon: IconButton(
                      onPressed: _toggleVisibility,
                      icon: _isHidden
                          ? const Icon(
                              Icons.visibility_off,
                              color: Colors.grey,
                            )
                          : const Icon(Icons.visibility, color: Colors.grey),
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
                  fontWeight: FontWeight.w600,
                ),
              ),
              MaterialButton(
                color: _isFilled ? Color(0xFFFA9B0D) : Color(0xFF959595),
                onPressed: () {},
                child: Container(
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
              ),
              Flexible(
                child: RichText(
                  text: const TextSpan(
                    children: [
                      TextSpan(
                        text: "Don't havean account?",
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
                  border: Border.all(
                    color: Colors.grey,
                    width: 1,
                  ),
                ),
                child: const Center(
                  child: Row(
                    children: [
                      Image(
                        image: AssetImage(
                          "asset/facebook.jpg",
                        ),
                      ),
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
        ),
      ),
    );
  }
}
