import 'package:flutter/material.dart';

class Screen2 extends StatefulWidget {
  const Screen2({Key? key}) : super(key: key);

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.greenAccent,
      body: Center(
        child: Text(
          "Sina Bro",
          style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
        ),
      ),
    ));
  }
}
