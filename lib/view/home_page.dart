import 'package:flutter/material.dart';
import '../widget/my_app_bar.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  bool _showMenu;

  @override
  void initState() {
    super.initState();
    _showMenu = true;
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
            Positioned(
              top: _screenHeigth * .19,
              height: _screenHeigth * .55,
              left: 0,
              right: 0,
              child: PageView(
                children: <Widget>[
                  Container(color: Colors.green),
                  Container(color: Colors.blue),
                  Container(color: Colors.amber)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
