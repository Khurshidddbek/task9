import 'package:flutter/material.dart';
import 'package:task9/pages/home_page.dart';
import 'package:task9/pages/splash_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: SplashPage(),
      routes: {
        HomePage.id: (context) => HomePage(),
        SplashPage.id: (context) => SplashPage(),
      },
    );
  }
}
