import 'package:flutter/material.dart';

class MyDotsApp extends StatelessWidget {
  final int dot;

  MyDotsApp(this.dot);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AnimatedContainer(
          duration: Duration(milliseconds: 300),
          height: 8,
          width: 8,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: (dot == 0) ? Colors.white : Colors.white60,
          ),
        ),
        SizedBox(width: 10),
        AnimatedContainer(
          duration: Duration(milliseconds: 300),
          height: 8,
          width: 8,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.0),
            color: (dot == 1) ? Colors.white : Colors.white60,
          ),
        ),
        SizedBox(width: 10),
        AnimatedContainer(
          duration: Duration(milliseconds: 300),
          height: 8,
          width: 8,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.0),
            color: (dot == 2) ? Colors.white : Colors.white60,
          ),
        ),
      ],
    );
  }
}
