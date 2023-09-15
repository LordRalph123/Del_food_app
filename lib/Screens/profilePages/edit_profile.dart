import 'package:flutter/material.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back, size: 24),
        ),
        title: const Text(
          "My Profile",
          style: TextStyle(),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              backgroundImage: AssetImage("asset/"),
              radius: 100,
            ),
            const SizedBox(height: 12),
            const Text(
              "Daniel Davies",
              style: TextStyle(),
            ),
            const SizedBox(height: 30),
            const Text(
              "Full name",
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
              child: const TextField(),
            ),
            const Row(
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
                    icon: const Icon(Icons.calendar_month),
                    onPressed: () {},
                  ),
                ),
              ),
            ),
            const Text(
              "Full name",
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
              child: const TextField(),
            ),
            const Text(
              "Email address",
              style: TextStyle(
                  fontSize: 14,
                  color: Color(0xFF5A5A5A),
                  fontWeight: FontWeight.w400),
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
          ],
        ),
      ),
    );
  }
}
