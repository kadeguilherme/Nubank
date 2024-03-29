import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:nubank/widget/splash/splash_page.dart';

main() {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarBrightness: Brightness.dark,
      statusBarColor: Colors.transparent,
      systemNavigationBarColor: Colors.purple[800],
    ),
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Clone da Nubank',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        brightness: Brightness.dark,
      ),
      home: SplashPage(),
    );
  }
}
