import 'package:flutter/material.dart';

class OrderHistory extends StatefulWidget {
  const OrderHistory({super.key});

  @override
  State<OrderHistory> createState() => _OrderHistoryState();
}

class _OrderHistoryState extends State<OrderHistory>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Flutter TabBar Demo",style: TextStyle(fontSize:18,
fontWeight:FontWeight(700),
color = Color(0xFF332E28),

)),
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(50.0),
          child: Container(
            color: Colors.grey[200], // Container enclosing the TabBar
            child: TabBar(
              controller: _tabController,
              labelColor: Colors.black,
              unselectedLabelColor: Colors.white,
              indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.blue, // Color when item is selected
              ),
              tabs: [
                Tab(
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: _tabController!.index == 0
                          ? Colors.blue
                          : Colors.transparent,
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text("Page 1"),
                    ),
                  ),
                ),
                Tab(
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: _tabController!.index == 1
                          ? Colors.blue
                          : Colors.transparent,
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text("Page 2"),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          Center(child: Text("Content of Page 1")),
          Center(child: Text("Content of Page 2")),
        ],
      ),
    );
  }
}
