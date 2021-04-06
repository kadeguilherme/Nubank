import 'package:flutter/material.dart';
import 'package:nubank/widget/cards/second_card.dart';
import 'package:nubank/widget/cards/third_card.dart';
import 'card_app.dart';
import 'cards/first_card.dart';

class PageViewApp extends StatefulWidget {
  final double top;
  final ValueChanged<int> onChanged;
  final bool showMenu;
  final GestureDragUpdateCallback onPanUpdate;
  final bool isTop;

  PageViewApp(
      {this.onChanged, this.showMenu, this.onPanUpdate, this.top, this.isTop});

  @override
  _PageViewAppState createState() => _PageViewAppState();
}

class _PageViewAppState extends State<PageViewApp> {
  Tween<double> _tween;

  @override
  void initState() {
    super.initState();
    _tween = Tween<double>(begin: 150.0, end: 150.0);
    delayAnimation();
  }

  Future<void> delayAnimation() async {
    await Future.delayed(Duration(seconds: 1), () {
      setState(() {
        _tween = Tween<double>(begin: 150.0, end: 0.0);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    double screenHeigth = MediaQuery.of(context).size.height;
    return TweenAnimationBuilder<double>(
        tween: _tween,
        duration: Duration(microseconds: 200),
        curve: Curves.bounceOut,
        builder: (context, value, child) {
          return AnimatedPositioned(
            duration: Duration(milliseconds: 200),
            curve: Curves.easeOut,
            top: widget.top,
            height: screenHeigth * .80,
            left: value,
            right: value * -1,
            child: Column(
              children: [
                GestureDetector(
                  onPanUpdate: widget.onPanUpdate,
                  child: Container(
                    height: screenHeigth * .55,
                    child: PageView(
                      physics: widget.isTop
                          ? BouncingScrollPhysics()
                          : NeverScrollableScrollPhysics(),
                      onPageChanged: widget.onChanged,
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
        });
  }
}
