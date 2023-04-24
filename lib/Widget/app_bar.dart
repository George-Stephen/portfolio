import 'package:flutter/material.dart';

class App_Bar extends StatelessWidget{
  final String text;

  App_Bar({required this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 14.0),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 14.0,
            letterSpacing: 3.0,
            color: Color(0xffBAD0D0)
          ),
        ),
      ),
    );
  }
}