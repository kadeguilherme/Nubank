import 'package:flutter/material.dart';
import 'package:nubank/widget/my_dots_app.dart';

import 'card_app.dart';

class PageViewApp extends StatefulWidget {
  @override
  _PageViewAppState createState() => _PageViewAppState();
}

class _PageViewAppState extends State<PageViewApp> {
  int dot;
  @override
  void initState() {
    super.initState();
    dot = 0;
  }

  @override
  Widget build(BuildContext context) {
    double _screenHeigth = MediaQuery.of(context).size.height;
    return Positioned(
      top: _screenHeigth * .24,
      height: _screenHeigth * .50,
      left: 0,
      right: 0,
      child: Column(
        children: [
          Container(
            height: _screenHeigth * .40,
            child: PageView(
              physics: BouncingScrollPhysics(),
              onPageChanged: (value) {
                setState(() {
                  dot = value;
                });
              },
              children: <Widget>[
                CardApp(),
                CardApp(),
                CardApp(),
              ],
            ),
          ),
          MyDotsApp(dot),
        ],
      ),
    );
  }
}
