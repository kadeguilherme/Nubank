import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  final bool showMenu;
  final VoidCallback onTap;

  MyAppBar({this.showMenu, this.onTap});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(top: 40),
        color: Colors.purple[800],
        height: MediaQuery.of(context).size.height * .13,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  'assets/nubank-logo.png',
                  height: 35,
                  color: Colors.white,
                ),
                SizedBox(width: 13),
                Text(
                  "Guilherme",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                )
              ],
            ),
            Icon(
              showMenu
                  ? Icons.keyboard_arrow_down_outlined
                  : Icons.keyboard_arrow_up,
              color: Colors.white,
              size: 40,
            ),
          ],
        ),
      ),
    );
  }
}
