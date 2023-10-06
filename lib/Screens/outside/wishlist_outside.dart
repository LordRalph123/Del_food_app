import 'package:flutter/material.dart';

class AccountOutside extends StatefulWidget {
  const AccountOutside({super.key});

  @override
  State<AccountOutside> createState() => _AccountOutsideState();
}

class _AccountOutsideState extends State<AccountOutside> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.arrow_back, size: 24),
          ),
          title: const Text(
            "Wishlist",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w700,
              color: Color(0xFF332E28),
            ),
          ),
          elevation: 0.00,
          backgroundColor: Colors.white,
        ),
        body: Center(
          child: Column(
            children: [
              Container(
                width: 242.0,
                height: 242.0,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/bag.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 64),
              const Text(
                "Wishlist is empty",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF332E28),
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                "You need to log in to able to add\n items to your wishlist",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF332E28),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
