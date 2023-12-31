import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'dart:async';

import '../payment/add_payment_method.dart';

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
  TextEditingController _controller = TextEditingController();
  bool _isFilled = false;

  StreamController<ErrorAnimationType>? errorController;

  bool hasError = false;
  String currentText = "";
  final formKey = GlobalKey<FormState>();
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
  void initStated() {
    errorController = StreamController<ErrorAnimationType>();
    super.initState();
  }

  @override
  void dispose() {
    errorController!.close();

    super.dispose();
  }

  ///snackBar Widget
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
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0XFFFFFFFF),
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.arrow_back, size: 24),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(26, 22, 26, 50),
          child: Column(
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
                "We just sent a 4 digit code to your email\n address @myem*****@gmail.com",
                style: TextStyle(
                    fontSize: 14,
                    color: Color(0xFF332E28),
                    fontWeight: FontWeight.w400),
              ),
              const SizedBox(height: 46),
              Form(
                key: formKey,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 8.0,
                    horizontal: 30,
                  ),
                  child: PinCodeTextField(
                    controller: _controller,
                    appContext: context,
                    pastedTextStyle: const TextStyle(
                      fontSize: 24,
                      color: Color(0xFF332E28),
                      fontWeight: FontWeight.w600,
                    ),
                    length: 4,
                    obscureText: true,
                    obscuringCharacter: '*',
                    obscuringWidget: const FlutterLogo(
                      size: 24,
                    ),
                    blinkWhenObscuring: true,
                    animationType: AnimationType.fade,
                    validator: (v) {
                      if (v!.length < 3) {
                        return "I'm from validator";
                      } else {
                        return null;
                      }
                    },
                    pinTheme: PinTheme(
                      shape: PinCodeFieldShape.box,
                      borderRadius: BorderRadius.circular(5),
                      fieldHeight: 50,
                      fieldWidth: 50,
                      activeFillColor: Color(0xFFD6D4D1),
                    ),
                    cursorColor: Colors.black,
                    animationDuration: const Duration(milliseconds: 300),
                    enableActiveFill: true,
                    errorAnimationController: errorController,
                    keyboardType: TextInputType.number,
                    boxShadows: const [
                      BoxShadow(
                        offset: Offset(0, 1),
                        color: Colors.black12,
                        blurRadius: 10,
                      ),
                    ],
                    onCompleted: (v) {
                      debugPrint("Completed");
                    },
                    onTap: () {
                      print("github");
                    },
                    onChanged: (value) {
                      debugPrint(value);
                      setState(() {
                        currentText = value;
                      });
                    },
                    beforeTextPaste: (text) {
                      debugPrint("Allows you to paste $text");
                      //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                      //but you can show anything you want here, like your pop up saying wrong paste format or etc.
                      return true;
                    },
                  ),
                ),
              ),
              const SizedBox(height: 71),
              const Text("Resend OTP"),
              MaterialButton(
                color: _isFilled
                    ? const Color(0xFFFA9B0D)
                    : const Color(0xFF959595),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                onPressed: () {
                  formKey.currentState!.validate();
                  //conditions for validating
                  if (currentText.length != 6 || currentText != "123456") {
                    errorController!.add(ErrorAnimationType.shake);
                    //Triggering error shake animation
                    setState(() => hasError = true);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const AddPaymentMethod()),
                    );
                  } else {
                    setState(
                      () {
                        hasError = false;
                        snackBar("OTP Verified");
                      },
                    );
                  }
                },
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
