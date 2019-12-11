import 'package:flutter/material.dart';
import 'signup.dart';
import 'login.dart';
import 'forgot_password.dart';

class Authentication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: true,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: EdgeInsets.only(top: 28),
            child: Row(
              children: <Widget>[
                Image.asset(
                  'assets/images/tyred.png',
                  width: 150,
                ),
                Text(
                  'Tyred',
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 48,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff515c6f),
                  ),
                ),
              ],
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            ),
          ),
          Flexible(
            flex: 4,
            fit: FlexFit.tight,
            child: PageView(
              controller: PageController(
                initialPage: 0,
              ),
              children: <Widget>[
                SignUp(),
                Login(),
                ForgotPassword(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
