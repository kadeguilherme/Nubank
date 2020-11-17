import 'package:flutter/material.dart';
import 'card_app.dart';

class PageViewApp extends StatelessWidget {
  final double top;
  final ValueChanged<int> onChanged;
  final bool showMenu;
  final GestureDragUpdateCallback onPanUpdate;
  final bool isTop;

  PageViewApp(
      {this.onChanged, this.showMenu, this.onPanUpdate, this.top, this.isTop});
  @override
  Widget build(BuildContext context) {
    double screenHeigth = MediaQuery.of(context).size.height;
    return AnimatedPositioned(
      duration: Duration(milliseconds: 400),
      curve: Curves.easeOut,
      top: top,
      height: screenHeigth * .80,
      left: 0,
      right: 0,
      child: Column(
        children: [
          GestureDetector(
            onPanUpdate: onPanUpdate,
            child: Container(
              height: screenHeigth * .55,
              child: PageView(
                physics: isTop
                    ? BouncingScrollPhysics()
                    : NeverScrollableScrollPhysics(),
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
