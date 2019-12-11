import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({
    Key key,
  }) : super(key: key);

  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
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
                  'Forgot Password',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Roboto Mono',
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 30, bottom: 30),
              width: MediaQuery.of(context).size.width * .65,
              child: RichText(
                textAlign: TextAlign.center,
                softWrap: true,
                text: TextSpan(
                  text:
                      'Enter the email address you used to create your account and we will email you a link to reset your password',
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Roboto',
                      fontSize: 16,
                      height: 1.5),
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
                                  'SEND EMAIL',
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
                      print(_formKey.currentState.value);
                    }
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
