import 'package:flutter/material.dart';

class SecondOnboarding extends StatelessWidget {
  const SecondOnboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: const Text("Create Your Account"),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Full name",
                style: TextStyle(),
              ),
              SizedBox(height: 3),
              Container(
                width: 376,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(color: Colors.grey, width: 1),
                ),
                child: TextField(),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text("Birthday"), Text("MM/DD/YYYY")],
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
                      icon: Icon(Icons.calendar_month),
                      onPressed: () {},
                    ),
                  ),
                ),
              ),
              const Text(
                "Email address",
                style: TextStyle(),
              ),
              SizedBox(height: 3),
              Container(
                width: 376,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(color: Colors.grey, width: 1),
                ),
                child: TextField(),
              ),
              const Text(
                "Password",
                style: TextStyle(),
              ),
              SizedBox(height: 3),
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
                    icon: Icon(Icons.visibility_off),
                  )),
                ),
              ),
              SizedBox(height: 64),
              Container(
                width: 376,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Color(0xFF959595),
                ),
                child: Center(
                  child: Text("Get Started"),
                ),
              ),
              SizedBox(height: 16),
              Flexible(
                child: RichText(
                  text: TextSpan(
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
              SizedBox(height: 48),
              Container(
                width: 376,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(color: Color(0xFFFA9B0D), width: 1),
                ),
                child: Center(
                  child: Text(
                    "Skip",
                    style: TextStyle(
                        color: Color(0xFFFA9B0D),
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              SizedBox(height: 48),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Divider(
                    color: Color(0xFF5A5A5A),
                    thickness: 1,
                  ),
                  Text("Or"),
                  Divider(),
                ],
              ),
              SizedBox(height: 48),
              Container(
                width: 376,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(color: Colors.grey, width: 1),
                ),
                child: Center(
                  child: Row(
                    children: [
                      Image(image: AssetImage("asset/")),
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
              SizedBox(height: 32),
              Container(
                width: 376,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(color: Colors.grey, width: 1),
                ),
                child: Center(
                  child: Row(
                    children: [
                      Image(image: AssetImage("asset/")),
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
