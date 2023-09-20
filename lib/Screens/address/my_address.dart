import 'package:flutter/material.dart';

class MyAddress extends StatefulWidget {
  const MyAddress({super.key});

  @override
  State<MyAddress> createState() => _MyAddressState();
}

class _MyAddressState extends State<MyAddress> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Image(
            image: AssetImage(
              "assets/Address.jpg",
            ),
          ),
          const SizedBox(height: 24),
          const Text(
            "You have not added any address yet,\n Kindly login to add your address",
            style: TextStyle(),
          ),
          const SizedBox(height: 217),
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
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
