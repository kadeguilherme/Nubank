import 'package:flutter/material.dart';
import 'package:nubank/model/list_bottom_mock.dart';

import 'package:nubank/widget/date_found.dart';
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
  double _yDirection;

  @override
  void initState() {
    super.initState();
    _showMenu = true;
    _value = 0;
  }

  @override
  Widget build(BuildContext context) {
    double _screenHeigth = MediaQuery.of(context).size.height;
    if (_yDirection == null) _yDirection = _screenHeigth * .20;

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
                  _yDirection =
                      _showMenu ? _screenHeigth * .20 : _screenHeigth * .78;
                });
              },
            ),
            DateFound(
              top: _screenHeigth * .19,
              showMenu: _showMenu,
            ),
            PageViewApp(
              top: _yDirection,
              showMenu: _showMenu,
              isTop: _showMenu,
              onChanged: (value) {
                setState(() {
                  _value = value;
                });
              },
              onPanUpdate: (details) {
                double positonTopLimit = _screenHeigth * .10;
                double positonBottomLimt = _screenHeigth * .78;
                double midlePosition = positonBottomLimt - positonTopLimit;
                midlePosition /= 2;
                setState(() {
                  _yDirection += details.delta.dy;

                  _yDirection = _yDirection < positonTopLimit
                      ? positonTopLimit
                      : _yDirection;

                  _yDirection = _yDirection > positonBottomLimt
                      ? positonBottomLimt
                      : _yDirection;

                  if (_yDirection != positonBottomLimt &&
                      details.delta.dy > 0) {
                    _yDirection =
                        _yDirection > midlePosition + positonTopLimit - 100
                            ? positonBottomLimt
                            : _yDirection;
                  }

                  if (_yDirection != positonTopLimit && details.delta.dy < 0) {
                    _yDirection =
                        _yDirection < positonBottomLimt - midlePosition + 100
                            ? positonTopLimit
                            : _yDirection;
                  }

                  if (_yDirection == positonBottomLimt) {
                    _showMenu = false;
                  } else if (_yDirection == positonTopLimit) {
                    _showMenu = true;
                  }
                });
              },
            ),
            Positioned(
              top: _screenHeigth * .75,
              child: MyDotsApp(
                dot: _value,
                showMenu: _showMenu,
              ),
            ),
            Positioned(
              bottom: 30,
              left: 0,
              right: 0,
              child: Container(
                margin: EdgeInsets.only(left: 8),
                height: 130,
                child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: ListBottomMock.data.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 3),
                      child: Card(
                        elevation: 0,
                        color: Colors.white12,
                        child: Container(
                          alignment: Alignment.topLeft,
                          padding: EdgeInsets.only(left: 8.0, right: 8.0),
                          width: 105,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ListBottomMock.data.values
                                  .map((e) => e)
                                  .toList()[index],
                              Text(ListBottomMock.data.keys
                                  .map((e) => e)
                                  .toList()[index]),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
