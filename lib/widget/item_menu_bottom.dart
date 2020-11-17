import 'package:flutter/material.dart';

class ItemMenuBottom extends StatelessWidget {
  final String text;
  final Icon icon;

  ItemMenuBottom({this.text, this.icon});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Container(
        color: Colors.white12,
        width: 105,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 5, left: 8),
              child: icon,
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 10),
              child: Text(
               text,
                style: TextStyle(fontWeight: FontWeight.w400),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
