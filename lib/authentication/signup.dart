import 'package:Tyred/screens/root.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:outline_material_icons/outline_material_icons.dart';
import 'dart:async';

class SignUp extends StatefulWidget {
  const SignUp({
    Key key,
  }) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _formKey = GlobalKey<FormBuilderState>();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.only(top: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 18.0, right: 18.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Sign Up',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Roboto Mono',
                  ),
                ),
              ),
            ),
            Container(
              child: Column(
                children: <Widget>[
                  FormBuilder(
                    key: _formKey,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(18, 10, 18, 20),
                      child: Container(
                        decoration: BoxDecoration(boxShadow: [
                          BoxShadow(
                            blurRadius: 10.0,
                            color: Color(0x11000000),
                            offset: Offset(0, 20),
                          ),
                        ]),
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          elevation: 0.0,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 20.0, top: 12, bottom: 12),
                                child: FormBuilderTextField(
                                  keyboardType: TextInputType.emailAddress,
                                  onChanged: (value) =>
                                      _formKey.currentState.validate(),
                                  style: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontSize: 16,
                                  ),
                                  attribute: "email",
                                  maxLines: 1,
                                  decoration: InputDecoration(
                                    focusColor: Color(0xffcaae53),
                                    border: InputBorder.none,
                                    labelText: 'EMAIL',
                                    labelStyle: TextStyle(
                                      fontFamily: 'Roboto Mono',
                                      fontSize: 16,
                                      letterSpacing: 1.5,
                                    ),
                                    icon: Icon(FontAwesomeIcons.envelope),
                                  ),
                                  validators: [
                                    FormBuilderValidators.required(),
                                    FormBuilderValidators.email(),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 16.0, bottom: 12),
                                child: FormBuilderTextField(
                                  style: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontSize: 16,
                                  ),
                                  onChanged: (value) =>
                                      _formKey.currentState.validate(),
                                  maxLines: 1,
                                  attribute: "username",
                                  decoration: InputDecoration(
                                    focusColor: Color(0xffcaae53),
                                    border: InputBorder.none,
                                    labelText: 'USERNAME',
                                    labelStyle: TextStyle(
                                      fontFamily: 'Roboto Mono',
                                      fontSize: 16,
                                      letterSpacing: 1.5,
                                    ),
                                    icon: Icon(
                                      OMIcons.person,
                                      size: 28,
                                    ),
                                  ),
                                  validators: [
                                    FormBuilderValidators.required(),
                                    FormBuilderValidators.minLength(6),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 16.0),
                                child: FormBuilderTextField(
                                  onChanged: (value) =>
                                      _formKey.currentState.validate(),
                                  obscureText: true,
                                  maxLines: 1,
                                  style: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontSize: 16,
                                  ),
                                  attribute: "password",
                                  decoration: InputDecoration(
                                    focusColor: Color(0xffcaae53),
                                    border: InputBorder.none,
                                    labelText: 'PASSWORD',
                                    labelStyle: TextStyle(
                                      fontFamily: 'Roboto Mono',
                                      fontSize: 16,
                                      letterSpacing: 1.5,
                                    ),
                                    icon: Icon(
                                      Icons.lock_outline,
                                      size: 30,
                                    ),
                                  ),
                                  validators: [
                                    FormBuilderValidators.required(),
                                    FormBuilderValidators.pattern(
                                      '^(?=.*[A-Za-z])(?=.*\\d)(?=.*[@\$!%*#?&])[A-Za-z\\d@\$!%*#?&]{8,}\$',
                                      errorText:
                                          'Minimum eight characters, at least one letter,\none number and one special character\n',
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 18, right: 18),
              child: SizedBox(
                width: double.infinity,
                child: RawMaterialButton(
                  elevation: 5,
                  shape: StadiumBorder(),
                  fillColor: Color(0xff37474F),
                  child: Stack(
                    children: [
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.only(top: 16, bottom: 16),
                              child: Center(
                                child: Text(
                                  'SIGN UP',
                                  style: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontSize: 15,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: IconButton(
                          onPressed: null,
                          color: Color(0xffFFE082),
                          icon: Icon(
                            FontAwesomeIcons.chevronRight,
                            color: Color(0xffFFE082),
                            size: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                  onPressed: () {
                    if (_formKey.currentState.saveAndValidate()) {
                      showDialog(
                          barrierDismissible: false,
                          context: context,
                          builder: (BuildContext context) {
                            return FutureBuilder(
                              future: _handleSignIn(),
                              builder: (context, snapshot) {
                                if (snapshot.connectionState !=
                                    ConnectionState.done) {
                                  return AlertDialog(
                                    title: Text(
                                      'Working on it...',
                                      style: TextStyle(
                                        fontFamily: 'Roboto Mono',
                                      ),
                                    ),
                                    content: Container(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.10,
                                      child: Center(
                                        child: CircularProgressIndicator(),
                                      ),
                                    ),
                                  );
                                } else {
                                  return AlertDialog(
                                    title: Text(
                                      'Welcome',
                                      style: TextStyle(
                                        fontFamily: 'Roboto Mono',
                                      ),
                                    ),
                                    content: Text('Registered Successfully'),
                                    actions: <Widget>[
                                      FlatButton(
                                          child: Text('CLOSE'),
                                          onPressed: () {
                                            Navigator.pop(context);
                                            Navigator.pushReplacement(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) => Root(),
                                                ));
                                          }),
                                    ],
                                  );
                                }
                              },
                            );
                          });
                    }
                  },
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 30),
              width: MediaQuery.of(context).size.width * .65,
              child: RichText(
                textAlign: TextAlign.center,
                softWrap: true,
                text: TextSpan(
                  text: 'Already have an account? \nSwipe left to ',
                  style: TextStyle(color: Colors.black),
                  children: [
                    TextSpan(
                      text: 'login. ',
                      style: TextStyle(
                        color: Color(
                          0xffcaae53,
                        ),
                      ),
                    ),
                    TextSpan(
                      text: 'By creating an account, you agree to our ',
                    ),
                    TextSpan(
                      text: 'Terms of Service ',
                      style: TextStyle(
                        color: Color(
                          0xffcaae53,
                        ),
                      ),
                    ),
                    TextSpan(
                      text: 'and ',
                    ),
                    TextSpan(
                      text: 'Privacy Policy ',
                      style: TextStyle(
                        color: Color(
                          0xffcaae53,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<FirebaseUser> _handleSignIn() async {
    String email, username, password;
    FirebaseAuth _auth = FirebaseAuth.instance;
    DatabaseReference _database = FirebaseDatabase.instance.reference();
    email = _formKey.currentState.value['email'];
    username = _formKey.currentState.value['username'];
    password = _formKey.currentState.value['password'];
    FirebaseUser user = (await _auth.createUserWithEmailAndPassword(
      email: email,
      password: password,
    ))
        .user;
    Map<String, String> userData = {
      'email': user.email,
      'username': username,
      'uid': user.uid,
    };
    _database.child('users/' + userData['uid']).set(userData);
    return user;
  }
}
