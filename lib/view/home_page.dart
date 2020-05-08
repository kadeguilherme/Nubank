import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[800],
      body: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                  color: Colors.purple[800],
                  height: 180,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.network(
                        'https://raw.githubusercontent.com/RenatoLucasMota/NubankHomeDesignFlutter/master/assets/images/nubank-logo.png',
                        height: 35,
                        color: Colors.white,
                      ),
                      SizedBox(width: 10),
                      Text(
                        "Guilherme",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      )
                    ],
                  ))
            ],
          )
        ],
      ),
    );
  }
}
