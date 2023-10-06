import 'package:flutter/material.dart';

class MyPaymentMethod extends StatefulWidget {
  const MyPaymentMethod({super.key});

  @override
  State<MyPaymentMethod> createState() => _MyPaymentMethodState();
}

class _MyPaymentMethodState extends State<MyPaymentMethod> {
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
            "Add Payment Method",
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
              Container(
                width: 376,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(color: Colors.grey, width: 1),
                ),
                child: const Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image(
                        image: AssetImage("assets/"),
                      ),
                      Text("Master Card\n 5199 6780 2132 3282"),
                      Icon(Icons.more_vert),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 480),
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
                      "+ Add payment method",
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
