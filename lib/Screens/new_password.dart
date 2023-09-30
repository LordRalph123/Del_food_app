import 'package:flutter/material.dart';

class NewPassWordScreen extends StatefulWidget {
  const NewPassWordScreen({super.key});

  @override
  State<NewPassWordScreen> createState() => _NewPassWordScreenState();
}

class _NewPassWordScreenState extends State<NewPassWordScreen> {
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
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.cancel, size: 24),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(26, 32, 26, 100),
          child: Column(
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
                "You've been verified, kindly\n create a new password",
                style: TextStyle(
                    fontSize: 14,
                    color: Color(0xFF5A5A5A),
                    fontWeight: FontWeight.w400),
              ),
              const SizedBox(height: 54),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 14),
                  Text(
                    "Password",
                    style: TextStyle(
                        fontSize: 14,
                        color: Color(0xFF5A5A5A),
                        fontWeight: FontWeight.w400),
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
              const SizedBox(height: 25),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 14),
                  Text(
                    "Confirm Password",
                    style: TextStyle(),
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
                  decoration: InputDecoration(
                      suffixIcon: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.visibility_off),
                  )),
                ),
              ),
              MaterialButton(
                color: _isFilled
                    ? const Color(0xFFFA9B0D)
                    : const Color(0xFF959595),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
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
