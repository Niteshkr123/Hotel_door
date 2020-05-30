import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'login.dart';
import 'package:flutter_offline/flutter_offline.dart';

void main() {
  runApp(MaterialApp(
     debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 4,
      backgroundColor: Colors.pinkAccent,
      image: Image.asset('splashGIF/Stay_safe.gif'),
      photoSize: 200.0,
      loaderColor: Colors.pinkAccent,
      navigateAfterSeconds: Login(),
    );
  }
}
