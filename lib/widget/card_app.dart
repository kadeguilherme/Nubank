import 'package:flutter/material.dart';

class CardApp extends StatelessWidget {
  final Widget child;

  const CardApp({Key key, this.child}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 20, left: 25, right: 25),
      child: Container(
        child: child,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          color: Colors.white,
        ),
      ),
    );
  }
}
