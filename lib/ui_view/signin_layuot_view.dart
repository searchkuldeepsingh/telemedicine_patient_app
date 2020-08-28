import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:telemedicine_patient_app/screens/fp_page.dart';
import 'package:telemedicine_patient_app/screens/signup_page.dart';
import 'package:telemedicine_patient_app/constants/constants.dart';
import 'package:telemedicine_patient_app/screens/tab_pages/tab_page.dart';
import 'package:telemedicine_patient_app/widgets/text_field_items/user_text_input.dart';

class SignInLayoutView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SignInLayoutViewState();
}

class _SignInLayoutViewState extends State<SignInLayoutView> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) => signInLayout();

  Widget signInLayout() => Container(
          child: Padding(
        padding: EdgeInsets.all(10),
        child: Stack(children: <Widget>[
          Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                const SizedBox(
                  height: 100,
                ),
                RichText(
                  text: TextSpan(
                    text: "+",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                      fontSize: 20.0,
                      fontFamily: Constants.OPEN_SANS,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Med',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                          fontSize: 20.0,
                          fontFamily: Constants.OPEN_SANS,
                        ),
                      ),
                      TextSpan(
                          text: 'APP',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontFamily: Constants.OPEN_SANS,
                            color: Colors.grey,
                          )),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                UserTextInput(
                  textEditController: _emailController,
                  hintTextString: 'Enter Email',
                  inputType: InputType.Email,
                  enableBorder: true,
                  themeColor: Constants.appThemeColor,
                  maxLength: 24,
                ),
                UserTextInput(
                  textEditController: _passwordController,
                  hintTextString: 'Enter Password',
                  inputType: InputType.Password,
                  themeColor: Constants.appThemeColor,
                  enableBorder: true,
                  maxLength: 16,
                  prefixIcon:
                      Icon(Icons.lock, color: Theme.of(context).primaryColor),
                ),
                Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: EdgeInsets.only(right: 10.0),
                      child: FlatButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => FPassPage()),
                            );
                          },
                          child: Text(
                            Constants.FORGOT_PASSWORD,
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: Constants.OPEN_SANS,
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.italic,
                              fontSize: 12.0,
                            ),
                          )),
                    )),
                const SizedBox(
                  height: 30,
                ),
                SizedBox(
                    width: 300,
                    height: 40,
                    child: RaisedButton(
                        color: Constants.appThemeColor,
                        onPressed: () {
                          //navigate to desired screen
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Home()),
                          );
                        },
                        child: Text(
                          Constants.SIGN_IN,
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: Constants.OPEN_SANS,
                            fontWeight: FontWeight.w600,
                            fontSize: 14.0,
                          ),
                        )))
              ]),
          Container(
            alignment: AlignmentDirectional.bottomStart,
            margin: EdgeInsets.only(bottom: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RichText(
                  text: TextSpan(
                      text: 'Don\'t have an account?',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontFamily: Constants.OPEN_SANS),
                      children: <TextSpan>[
                        TextSpan(
                            text: ' Register now',
                            style: TextStyle(
                                decoration: TextDecoration.underline,
                                color: Constants.appThemeColor,
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                fontFamily: Constants.OPEN_SANS),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                //navigate to desired screen
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SignUpPage()),
                                );
                              })
                      ]),
                ),
              ],
            ),
          ),
        ]),
      ));
}
