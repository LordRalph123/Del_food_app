import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../forgot_password.dart';

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

  TextEditingController _dateController = TextEditingController();
  _selectDate(BuildContext context) async {
    DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );

    if (pickedDate != null && pickedDate != DateTime.now())
      setState(() {
        _dateController.text = "${pickedDate.toLocal()}".split(' ')[0];
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
        backgroundColor: const Color(0XFFFFFFFF),
        body: SizedBox(
          width: 428,
          height: 1198,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(26, 32, 26, 32),
            child: ListView(
              scrollDirection: Axis.vertical,
              children: [
                const Center(
                  child: Text(
                    "Create Your Account",
                    style: TextStyle(
                        fontSize: 24,
                        color: Color(0xFF332E28),
                        fontWeight: FontWeight.w600),
                  ),
                ),
                const SizedBox(height: 32),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 14,
                    ),
                    Text(
                      "Full name",
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0XFF5A5A5A),
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
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 15.0),
                      border: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      hintText: "Daniel Davies",
                      hintStyle: TextStyle(
                          fontSize: 14,
                          color: Color(0xFF5A5A5A),
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 14,
                    ),
                    Text(
                      "Birthday",
                      style: TextStyle(
                          fontSize: 14,
                          color: Color(0xFF5A5A5A),
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(width: 150),
                    Text(
                      "MM/DD/YYYY",
                      style: TextStyle(
                          fontSize: 14,
                          color: Color(0xFFD6D4D1),
                          fontWeight: FontWeight.w600),
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
                    readOnly: false,
                    controller: _dateController,
                    decoration: InputDecoration(
                      hintText: "27/04/1991",
                      hintStyle: const TextStyle(
                          fontSize: 14,
                          color: Color(0xFF5A5A5A),
                          fontWeight: FontWeight.w600),
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 15.0),
                      border: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      suffixIcon: IconButton(
                        icon: const Icon(
                          Icons.calendar_month,
                          size: 24,
                        ),
                        onPressed: () {
                          _selectDate(context);
                        },
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(width: 14),
                    Text(
                      "Phone number",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF5A5A5A)),
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
                  child: const TextField(
                    decoration: InputDecoration(
                      hintText: "08120130534",
                      hintStyle: TextStyle(
                          fontSize: 14,
                          color: Color(0xFF5A5A5A),
                          fontWeight: FontWeight.w600),
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 15.0),
                      border: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(width: 14),
                    Text(
                      "Email address",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF5A5A5A)),
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
                  child: const TextField(
                    decoration: InputDecoration(
                      hintText: "myemail@gmail.com",
                      hintStyle: TextStyle(
                          fontSize: 14,
                          color: Color(0xFF5A5A5A),
                          fontWeight: FontWeight.w600),
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 15.0),
                      border: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(width: 14),
                    Text(
                      "Password",
                      style: TextStyle(
                        color: Color(0xFF5A5A5A),
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
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
                const SizedBox(height: 20),
                Flexible(
                  child: RichText(
                    text: TextSpan(
                      children: [
                        const TextSpan(
                          text: "Forgot your password?",
                          style: TextStyle(
                              color: Color(0xFF5A5A5A),
                              fontSize: 16,
                              fontWeight: FontWeight.w400),
                        ),
                        TextSpan(
                          text: "Click here",
                          style: const TextStyle(
                              color: Color(0xFFFA9B0D),
                              fontSize: 16,
                              fontWeight: FontWeight.w400),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const ForgotPasswordScreen(),
                                ),
                              );
                            },
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 64),
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
                    ),
                    child: const Center(
                      child: Text(
                        "Get Started",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                Center(
                  child: Flexible(
                    child: RichText(
                      text: const TextSpan(
                        children: [
                          TextSpan(
                            text: "Already have an account?",
                            style: TextStyle(
                                color: Color(0xFF5A5A5A),
                                fontSize: 16,
                                fontWeight: FontWeight.w400),
                          ),
                          TextSpan(
                            text: "Login",
                            style: TextStyle(
                                color: Color(0xFFFA9B0D),
                                fontSize: 16,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
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
                    border:
                        Border.all(color: const Color(0xFFFA9B0D), width: 1),
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 1,
                      width: 110,
                      decoration: const BoxDecoration(color: Colors.grey),
                    ),
                    const SizedBox(width: 32),
                    const Text(
                      "Or",
                      style: TextStyle(
                          color: Color(0xFF332E28),
                          fontSize: 18,
                          fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(width: 32),
                    Container(
                      height: 1,
                      width: 110,
                      decoration: const BoxDecoration(color: Colors.grey),
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
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 24.0,
                          height: 24.0,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/google.jpg"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(width: 25),
                        const Text(
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
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 24.0,
                          height: 24.0,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/facebook.jpg"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(width: 24),
                        const Text(
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
      ),
    );
  }
}
