import 'package:delfood_app/Screens/outside/account_outside.dart';
import 'package:delfood_app/Screens/outside/cart_outside.dart';
import 'package:delfood_app/Screens/outside/home.dart';
import 'package:delfood_app/Screens/outside/order_outside.dart';
import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    AccountOutside(),
    CartPAge(),
    OrderPage(),
    HomePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: IconButton(
              icon: Icon(Icons.ac_unit_sharp),
              onPressed: () {},
            ),
          ),
          BottomNavigationBarItem(
              icon: IconButton(onPressed: onPressed, icon: icon))
        ],
      ),
    );
  }
}
