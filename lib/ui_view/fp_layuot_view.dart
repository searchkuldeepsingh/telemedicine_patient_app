import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:telemedicine_patient_app/constants/constants.dart';
import 'package:telemedicine_patient_app/widgets/text_field_items/user_text_input.dart';

class FPassLayoutView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _FPassLayoutViewState();
}

class _FPassLayoutViewState extends State<FPassLayoutView> {
  final TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) => fPassLayout();

  Widget fPassLayout() => Stack(
        alignment: Alignment.topLeft,
        children: <Widget>[
          IconButton(
            padding: EdgeInsets.only(left: 10, top: 30),
            icon: Icon(Icons.arrow_back),
            color: Constants.appThemeColor,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          fpassLayout()
        ],
      );

  Widget fpassLayout() => Container(
        child: Stack(alignment: Alignment.topLeft, children: <Widget>[
          Column(children: <Widget>[
            const SizedBox(
              height: 150,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 25.0),
                  child: Text(
                    Constants.FORGOT_PASS,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Constants.appThemeColor,
                      fontSize: 20.0,
                      fontFamily: Constants.OPEN_SANS,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            UserTextInput(
              textEditController: _emailController,
              hintTextString: 'Email address',
              inputType: InputType.Email,
              enableBorder: true,
              cornerRadius: 48.0,
              maxLength: 24,
            ),
            const SizedBox(
              height: 40,
            ),
            SizedBox(
                width: 300,
                height: 40,
                child: RaisedButton(
                    color: Constants.appThemeColor,
                    onPressed: () {},
                    child: Text(
                      Constants.RESET_PASS,
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: Constants.OPEN_SANS,
                        fontWeight: FontWeight.w600,
                        fontSize: 14.0,
                      ),
                    )))
          ]),
        ]),
      );
}
