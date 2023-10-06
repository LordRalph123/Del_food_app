import 'package:flutter/material.dart';

class HelpCenter extends StatefulWidget {
  const HelpCenter({super.key});

  @override
  State<HelpCenter> createState() => _HelpCenterState();
}

class _HelpCenterState extends State<HelpCenter> {
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
            "Help Center",
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Have issues making an order or making use\n of our app? mail us at care@delfoods.ng or\n drop amessage for us below.",
                style: TextStyle(
                  fontSize: 14,
                  color: Color(0xFF5A5A5A),
                ),
              ),
              const SizedBox(height: 26),
              const Text(
                "Name",
                style: TextStyle(),
              ),
              Container(
                width: 325, // Define the width
                height: 50, // Define the height
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding: const EdgeInsets.all(12),
                    border: OutlineInputBorder(
                      borderRadius:
                          BorderRadius.circular(50), // Define the border radius
                      borderSide:
                          const BorderSide(color: Color(0xFF959595), width: 1),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              const Text(
                "Email address",
                style: TextStyle(),
              ),
              Container(
                width: 325, // Define the width
                height: 50, // Define the height
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding: const EdgeInsets.all(12),
                    border: OutlineInputBorder(
                      borderRadius:
                          BorderRadius.circular(50), // Define the border radius
                      borderSide:
                          const BorderSide(color: Color(0xFF959595), width: 1),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              const Text(
                "Tell us something",
                style: TextStyle(),
              ),
              Container(
                width: 325, // Define the width
                height: 226, // Define the height
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding: const EdgeInsets.all(12),
                    border: OutlineInputBorder(
                      borderRadius:
                          BorderRadius.circular(50), // Define the border radius
                      borderSide:
                          const BorderSide(color: Color(0xFF959595), width: 1),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 105),
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
                      "Submit",
                      style: TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
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
