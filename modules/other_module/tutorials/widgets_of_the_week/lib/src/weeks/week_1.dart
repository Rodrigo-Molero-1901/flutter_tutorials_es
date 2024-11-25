import 'package:flutter/material.dart';

class Week1 extends StatefulWidget {
  const Week1({super.key});

  @override
  State<Week1> createState() => _Week1State();
}

class _Week1State extends State<Week1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: List.generate(
          100,
          (i) => Text('This is some text at $i index'),
        ),
      ),
    );
  }
}
