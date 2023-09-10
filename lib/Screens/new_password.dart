import 'package:flutter/material.dart';

class NewPassWordScreen extends StatefulWidget {
  const NewPassWordScreen({super.key});

  @override
  State<NewPassWordScreen> createState() => _NewPassWordScreenState();
}

class _NewPassWordScreenState extends State<NewPassWordScreen> {
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
            "New Password",
            style: TextStyle(
                color: Color(0xFF332E28),
                fontSize: 24,
                fontWeight: FontWeight.w700),
          ),
          Text("You've been verified, kindly\n create a new password"),
          SizedBox(height: 54),
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
              )),
            ),
          ),
          SizedBox(height: 25),
          const Text(
            "Confirm Password",
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
              )),
            ),
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
