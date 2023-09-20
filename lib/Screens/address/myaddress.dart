import 'package:flutter/material.dart';

class Myaddress extends StatefulWidget {
  const Myaddress({super.key});

  @override
  State<Myaddress> createState() => _MyaddressState();
}

class _MyaddressState extends State<Myaddress> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back,
            size: 24,
          ),
        ),
        title: const Text(
          "My Address",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w700,
            color: Color(0xFF332E28),
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: 357,
            height: 70,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: const Color(0xFF959595), width: 1)),
            child: const Row(
              children: [
                Icon(Icons.location_on_outlined),
                Text(
                  "Mission Street, Oja Oba, Akure",
                  style: TextStyle(),
                ),
                Icon(
                  Icons.more_vert,
                  size: 24,
                ),
              ],
            ),
          ),
          const SizedBox(height: 577),
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
                  "+ Add new address",
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
    );
  }
}
