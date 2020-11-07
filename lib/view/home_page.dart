import 'package:flutter/material.dart';
import 'package:nubank/widget/my_dots_app.dart';

import 'package:nubank/widget/page_view_app.dart';
import '../widget/my_app_bar.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  bool _showMenu;
  int _value;

  @override
  void initState() {
    super.initState();
    _showMenu = true;
    _value = 0;
  }

  @override
  Widget build(BuildContext context) {
    double _screenHeigth = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.purple[800],
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Stack(
          alignment: Alignment.topCenter,
          children: <Widget>[
            MyAppBar(
              showMenu: _showMenu,
              onTap: () {
                setState(() {
                  _showMenu = !_showMenu;
                });
              },
            ),
            PageViewApp(
                screenHeigth: _screenHeigth,
                showMenu: _showMenu,
                onChanged: (value) {
                  setState(() {
                    _value = value;
                  });
                }),
            Positioned(
              top: _screenHeigth * .65,
              child: MyDotsApp(_value),
            ),
          ],
        ),
      ),
    );
  }
}
