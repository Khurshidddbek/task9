import 'dart:async';

import 'package:flutter/material.dart';
import 'package:task9/pages/home_page.dart';

class SplashPage extends StatefulWidget {
  static final String id = 'splash_page';

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  _inTime() {
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, HomePage.id);
    });
  }

  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    _inTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(30),
        child: Stack(
          children: [
            Center(
              child: Image.asset(
                'assets/images/amazon_logo.png',
                width: 80,
                height: 80,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Center(
                  child: Text(
                    'From Amazon',
                    style: TextStyle(fontSize: 17),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
