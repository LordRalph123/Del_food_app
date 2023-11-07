import 'package:flutter/material.dart';

class History extends StatefulWidget {
  const History({super.key});

  @override
  State<History> createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 567,
      width: 300,
      decoration:const BoxDecoration(
color: Colors.greenAccent///
borderRadius: BorderRadius.circular(Radius.circular(ci))
      ),
    );
  }
}
