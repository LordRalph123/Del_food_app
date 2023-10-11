import 'package:flutter/material.dart';

import 'history.dart';

class OrderHistory extends StatefulWidget {
  const OrderHistory({super.key});

  @override
  State<OrderHistory> createState() => _OrderHistoryState();
}

class _OrderHistoryState extends State<OrderHistory> {
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: //);
  }
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
         body: Column(
          children: [
            Container(
            color: Colors.amber,
            child: TabBar(
              controller: _tabController,
              tabs: const [
                Tab(text: 'Pending'),
                Tab(text: 'History'),
              ],
            ),
          ),
          const SizedBox(height: 20),
           TabBarView(
        controller: _tabController,
        children:const  [
          Center(child: History()),
          Center(child: ),
        ],
      ),
          ],
         ), 
      ),
    );
  }
  @override
  void dispose() {
    _tabController?.dispose();
    super.dispose();
  }
}
