import 'package:flutter/material.dart';
import 'card_app.dart';

class PageViewApp extends StatelessWidget {
  final double top;
  final ValueChanged<int> onChanged;
  final bool showMenu;
  final GestureDragUpdateCallback onPanUpdate;

  PageViewApp({this.onChanged, this.showMenu, this.onPanUpdate, this.top});
  @override
  Widget build(BuildContext context) {
    double screenHeigth = MediaQuery.of(context).size.height;
    return AnimatedPositioned(
      duration: Duration(milliseconds: 400),
      curve: Curves.easeOut,
      top: top, //* (showMenu ? .24 : .70),
      height: screenHeigth * .50,
      left: 0,
      right: 0,
      child: Column(
        children: [
          GestureDetector(
            onPanUpdate: onPanUpdate,
            child: Container(
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
          ),
        ],
      ),
    );
  }
}
