import 'package:flutter/material.dart';

class CartPAge extends StatelessWidget {
  const CartPAge({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back, size: 24),
        ),
        title: const Text(
          "Cart",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w700,
            color: Color(0xFF332E28),
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              height: 242,
              width: 242,
              decoration: BoxDecoration(),
            ),
            const SizedBox(height: 64),
            const Text(
              "Your Cart is empty",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Color(0xFF332E28),
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              "You need to log in to able to add\n items to your cart",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Color(0xFF332E28),
              ),
            )
          ],
        ),
      ),
    );
  }
}
