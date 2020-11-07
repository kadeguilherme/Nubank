import 'package:flutter/material.dart';
import 'card_app.dart';

class PageViewApp extends StatelessWidget {
  final double screenHeigth;
  final ValueChanged<int> onChanged;
  final bool showMenu;

  PageViewApp({this.screenHeigth, this.onChanged, this.showMenu});
  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      duration: Duration(milliseconds: 400),
      curve: Curves.easeOut,
      top: screenHeigth * (showMenu ? .24 : .70),
      height: screenHeigth * .50,
      left: 0,
      right: 0,
      child: Column(
        children: [
          Container(
            height: screenHeigth * .40,
            child: PageView(
              physics: BouncingScrollPhysics(),
              onPageChanged: onChanged,
              children: <Widget>[
                CardApp(),
                CardApp(),
                CardApp(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
