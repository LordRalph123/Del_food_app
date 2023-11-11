import 'package:flutter/material.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({super.key});

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              print("get to the back page");
            },
            icon: const Icon(Icons.arrow_back, size: 24, color: Colors.,),
          ),
          title: const Text(
            "Order",
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
                    image: AssetImage("assets/carton.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 64),
              const Text(
                "You have not made any order",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF332E28),
                ),
              ),
              const SizedBox(height: 8,),
              const Text(
                "You need to log in to be able to\n make orders",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF332E28),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  } 
}
//like this working on something since no commit on it
//lemme check
