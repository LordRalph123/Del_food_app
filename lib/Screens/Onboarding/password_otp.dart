import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class otp extends StatefulWidget {
  const otp({
    Key? key,
    this.phoneNumber,
  }) : super(key: key);

  final String? phoneNumber;

  @override
  State<otp> createState() => _otpState();
}

class _otpState extends State<otp> {
  TextEditingController textEditingController = TextEditingController();
  // ..text = "123456";

  // ignore: close_sinks
  StreamController<ErrorAnimationType>? errorController;

  bool hasError = false;
  String currentText = "";
  final formKey = GlobalKey<FormState>();

  @override
  void initState() {
    errorController = StreamController<ErrorAnimationType>();
    super.initState();
  }

  @override
  void dispose() {
    errorController!.close();

    super.dispose();
  }

  // snackBar Widget
  snackBar(String? message) {
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message!),
        duration: const Duration(seconds: 2),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back, size: 24),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "OTP VERIFICATION",
            style: TextStyle(
                color: Color(0xFF332E28),
                fontSize: 24,
                fontWeight: FontWeight.w700),
          ),
          const Text(
              "we just sent a 4 digit code to your email\n address @myem*****@gmail.com"),
          const SizedBox(height: 46),
          //TO DO {PIN CODE}

          Container(
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
        ],
      ),
    );
  }
}
