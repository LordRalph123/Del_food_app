import 'package:flutter/material.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key});

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFFFFFFFF),
      appBar: AppBar(
        title: const Text("Create Your Account"),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: ListView(
            children: [
              const Text(
                "Full name",
                style: TextStyle(
                  fontSize: 14,
                  color: Color(0XFF5A5A5A),
                ),
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
                      hintText: "", hintStyle: TextStyle()),
                ),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Birthday",
                    style: TextStyle(),
                  ),
                  Text(
                    "MM/DD/YYYY",
                    style: TextStyle(),
                  )
                ],
              ),
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
                      icon: const Icon(Icons.calendar_month),
                      onPressed: () {},
                    ),
                  ),
                ),
              ),
              const Text(
                "Email address",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
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
              const Text(
                "Password",
                style: TextStyle(
                  color: Color(0xFF5A5A5A),
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
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
              const SizedBox(height: 64),
              Container(
                width: 376,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: const Color(0xFF959595),
                ),
                child: const Center(
                  child: Text("Get Started"),
                ),
              ),
              const SizedBox(height: 16),
              Flexible(
                child: RichText(
                  text: const TextSpan(
                    children: [
                      TextSpan(
                        text: "Already have an account?",
                        style: TextStyle(
                          color: Color(0xFF5A5A5A),
                        ),
                      ),
                      TextSpan(
                        text: "Login",
                        style: TextStyle(
                            color: Color(0xFFFA9B0D),
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 48),
              Container(
                width: 376,
                height: 50,
                decoration: BoxDecoration(
                  color: const Color(0XFFFFFFFF),
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(color: const Color(0xFFFA9B0D), width: 1),
                ),
                child: const Center(
                  child: Text(
                    "Skip",
                    style: TextStyle(
                        color: Color(0xFFFA9B0D),
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
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
                        fontWeight: FontWeight.w600),
                  ),
                  Divider(color: Color(0XFF332E28), thickness: 1),
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
                      SizedBox(width: 25),
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
        ),
      ),
    );
  }
}
