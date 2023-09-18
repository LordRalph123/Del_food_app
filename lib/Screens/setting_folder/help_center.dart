import 'package:flutter/material.dart';

class HelpCenter extends StatefulWidget {
  const HelpCenter({super.key});

  @override
  State<HelpCenter> createState() => _HelpCenterState();
}

class _HelpCenterState extends State<HelpCenter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Have issues making an order or making use\n of our app? mail us at care@delfoods.ng or\n drop amessage for us below.",
            style: TextStyle(
              fontSize: 14,
              color: Color(0xFF5A5A5A),
            ),
          ),
          SizedBox(height: 26),
          Text(
            "Name",
            style: TextStyle(),
          ),
          Container(
            width: 200, // Define the width
            height: 50, // Define the height
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                contentPadding: EdgeInsets.all(12),
                border: OutlineInputBorder(
                  borderRadius:
                      BorderRadius.circular(25), // Define the border radius
                  borderSide: BorderSide(color: Colors.blue, width: 2),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
