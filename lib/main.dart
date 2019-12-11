import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:Tyred/authentication/authentication.dart';

void main() {
  // Enable Full Screen viewing
  SystemChrome.setEnabledSystemUIOverlays([]);
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Splash(),
  ));
}

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 5,
      navigateAfterSeconds: Authentication(),
      image: Image.asset('assets/images/tyred.png'),
      backgroundColor: Colors.white,
      photoSize: 100.0,
      loaderColor: Color(0xff102027),
    );
  }
}
