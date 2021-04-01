import 'package:flutter/material.dart';
import 'package:nubank/widget/second_card.dart';
import 'package:nubank/widget/third_card.dart';
import 'card_app.dart';
import 'first_card.dart';

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
                  CardApp(child: FirstCard()),
                  CardApp(child: SecondCard()),
                  CardApp(child: ThirdCard()),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
