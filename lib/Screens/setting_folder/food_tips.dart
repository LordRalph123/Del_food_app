import 'package:flutter/material.dart';

class DailyFoodTips extends StatefulWidget {
  const DailyFoodTips({super.key});

  @override
  State<DailyFoodTips> createState() => _DailyFoodTipsState();
}

class _DailyFoodTipsState extends State<DailyFoodTips> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back, size: 24),
        ),
        title: const Text(
          "Daily food tips",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w700,
            color: Color(0xFF332E28),
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            constraints:
                const BoxConstraints(maxWidth: 344.0, maxHeight: 344.0),
            child: Image.asset('assets/your_image.png', fit: BoxFit.cover),
          ),
          const SizedBox(height: 64),
          const Align(
            alignment: Alignment.center,
            child: Text(
              "Do you know?",
              style: TextStyle(),
            ),
          ),
          const Text(
            "Eating fruits efore a meal is dangerous as it can\n cause indigestion, flatulence or heartburn and\n this is because fruits need more time to digest.",
            style: TextStyle(),
          ),
        ],
      ),
    );
  }
}
