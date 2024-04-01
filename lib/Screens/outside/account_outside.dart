import 'package:flutter/material.dart';

class AccountOutside extends StatefulWidget {
  const AccountOutside({super.key});

  @override
  State<AccountOutside> createState() => _AccountOutsideState();
}

class _AccountOutsideState extends State<AccountOutside> {
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
          title: const Text(
            "Account",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w700,
              color: Color(0xFF332E28),
            ),
          ),
          elevation: 0.00,
          backgroundColor: Colors.white,
        ),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(26, 32, 26, 100),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Text(
                "Login to start, explore and personalise your\n shopping experience",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Color(0XFF332E28),
                ),
              ),
              const SizedBox(height: 30),
              MaterialButton(
                onPressed: () {
                  
                },
                child: Container(
                  width: 376,
                  height: 50,
                  decoration: BoxDecoration(
                    color: const Color(0xFFFA9B0D),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: const Center(
                    child: Text(
                      "Login",
                      style: TextStyle(
                          color: Colors.white,
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
                        text: "Already have an account?",
                        style: TextStyle(
                          color: Color(0xFF5A5A5A),
                        ),
                      ),
                      TextSpan(
                        text: "Create account",
                        style: TextStyle(
                            color: Color(0xFFFA9B0D),
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 50),
              Divider(),
              Row(
                children: [
                  Icon(Icons.settings, size: 16),
                  Text(
                    "Settings",
                    style: TextStyle(),
                  ),
                  SizedBox(width: 253),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.arrow_forward_ios),
                  ),
                  SizedBox(height: 23),
                  Divider(),
                ],
              ),
              const SizedBox(height: 23),
              Row(
                children: [
                  Icon(Icons.question_mark_rounded, size: 16),
                  Text(
                    "Help center",
                    style: TextStyle(fontSize:29, color:Colors.redAccent),
                  ),
                  const SizedBox(width: 226),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.arrow_forward_ios),
                  ),
                  const SizedBox(height:23),
                  Divider(),

                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
