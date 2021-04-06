import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[800],
      body: Center(
        child: Image.network(
          'https://raw.githubusercontent.com/RenatoLucasMota/NubankHomeDesignFlutter/master/assets/images/nubank-logo.png',
          height: 50,
          color: Colors.white,
        ),
      ),
    );
  }
}
