import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:Tyred/authentication/authentication.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  // Enable Full Screen viewing
  SystemChrome.setEnabledSystemUIOverlays([]);
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splash(),
      theme: ThemeData(
        primaryColor: Color(0xff37474f),
        colorScheme: ColorScheme(
          onBackground: Color(0xff37474f),
          background: Colors.white,
          error: Colors.red,
          surface: Colors.white,
          onSurface: Colors.black,
          brightness: Brightness.light,
          primary: Color(0xff37474f),
          primaryVariant: Color(0xff102027),
          onPrimary: Colors.white,
          secondary: Color(0xffffe082),
          secondaryVariant: Color(0xffcaae53),
          onSecondary: Colors.black,
          onError: Colors.white,
        ),
      ),
    ),
  );
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
