import 'package:delfood_app/Screens/order/pending.dart';
import 'package:flutter/material.dart';

import 'history.dart';

class OrderHistory extends StatefulWidget {
  const OrderHistory({super.key});

  @override
  State<OrderHistory> createState() => _OrderHistoryState();
}

class _OrderHistoryState extends State<OrderHistory> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "My Order",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w700,
              color: Color(0xFF332E28),
            ),
          ),
          bottom: TabBar(
            indicator: const BoxDecoration(
              color: Color(
                  0xFFFA9B0D), // This is the color you'd like for the active tab
            ),
            tabs: [
              Container(
                padding: const EdgeInsets.all(8),
                decoration: const BoxDecoration(
                  color: Colors.red, // Default color for the tab
                ),
                child: const Align(
                  alignment: Alignment.center,
                  child: Text("Pending"),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                decoration: const BoxDecoration(
                  color: Colors.green, // Default color for the tab
                ),
                child: const Align(
                  alignment: Alignment.center,
                  child: Text("History"),
                ),
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Center(child: History()),
            Center(child: Pending()),
          ],
        ),
      ),
    );
  }
}
