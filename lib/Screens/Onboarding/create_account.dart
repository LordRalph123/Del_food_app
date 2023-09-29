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
            padding: EdgeInsets.fromLTRB(26, 32, 26, 32),
            child: ListView(
              scrollDirection: Axis.vertical,
              children: [
                Center(
                  child: const Text(
                    "Create Your Account",
                    style: TextStyle(
                        fontSize: 24,
                        color: Color(0xFF332E28),
                        fontWeight: FontWeight.w600),
                  ),
                ),
                SizedBox(height: 32),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 14,
                    ),
                    const Text(
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
                        hintText: "",
                        hintStyle: TextStyle()),
                  ),
                ),
                SizedBox(
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
                      contentPadding: EdgeInsets.symmetric(
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
                SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(width: 14),
                    const Text(
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
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 15.0),
                      border: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                    ),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(width: 14),
                    const Text(
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
                      contentPadding: EdgeInsets.symmetric(
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
                      borderRadius: BorderRadius.circular(25),
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
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Divider(
                      color: Color(0xFFD6D4D1),
                      thickness: 1,
                    ),
                    Text(
                      "Or",
                      style: TextStyle(
                          color: Color(0xFF332E28),
                          fontSize: 18,
                          fontWeight: FontWeight.w600),
                    ),
                    Divider(color: Color(0xFFD6D4D1), thickness: 1),
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
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/google.jpg"),
                              fit: BoxFit.cover,
                            ),
                          ),
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
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 24.0,
                          height: 24.0,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/facebook.jpg"),
                              fit: BoxFit.cover,
                            ),
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
      ),
    );
  }
}
