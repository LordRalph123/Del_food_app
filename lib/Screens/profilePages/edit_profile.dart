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
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Color(0xFF332E28),
          ),
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
              style: TextStyle(
                  fontSize: 14,
                  color: Color(0xFF5A5A5A),
                  fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 30),
            const Text(
              "Full name",
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
              child: const TextField(
                decoration: InputDecoration(
                  labelText: "Daniel Davies",
                  labelStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF5A5A5A),
                  ),
                ),
              ),
            ),
            SizedBox(height: 25),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Birthday",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF5A5A5A),
                  ),
                ),
                Text(
                  "MM/DD/YYYY",
                  style: TextStyle(
                      color: Color(0xFFD6D4D1),
                      fontSize: 14,
                      fontWeight: FontWeight.w600),
                ),
              ],
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
                  labelText: "27/04/1991",
                  labelStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF5A5A5A),
                  ),
                  suffixIcon: IconButton(
                    icon: const Icon(Icons.calendar_month),
                    onPressed: () {},
                  ),
                ),
              ),
            ),
            const Text(
              "Phone number",
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
              child: const TextField(
                decoration: InputDecoration(
                  labelText: "0812013534",
                  labelStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF5A5A5A),
                  ),
                ),
              ),
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
              child: const TextField(
                decoration: InputDecoration(labelText: "mymail@gmail.com"),
              ),
            ),
            MaterialButton(
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
                    "Edit",
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
    );
  }
}
