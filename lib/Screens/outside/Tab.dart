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
      body: Column(
        children: [
          _pages[_currentIndex],
          const SizedBox(height: 66),
          MaterialButton(
            onPressed: () {},
            child: Container(
              width: 376,
              height: 50,
              decoration: BoxDecoration(
                color: Color(0xFFFA9B0D),
                borderRadius: BorderRadius.circular(50),
              ),
              child: const Center(
                child: Text(
                  "Login",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: IconButton(
              icon: Icon(Icons.ac_unit_sharp),
              onPressed: () {},
            ),
          ),
          BottomNavigationBarItem(
              icon: IconButton(onPressed: () {}, icon: Icon(Icons.abc))),
          BottomNavigationBarItem(
              icon: IconButton(onPressed: () {}, icon: Icon(Icons.abc))),
          BottomNavigationBarItem(
              icon: IconButton(onPressed: () {}, icon: Icon(Icons.abc)))
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        selectedItemColor: Colors.yellow,
      ),
    );
  }
}
