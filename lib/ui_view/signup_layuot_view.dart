import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:telemedicine_patient_app/constants/constants.dart';
import 'package:telemedicine_patient_app/widgets/text_field_items/user_text_input.dart';

class SignUpLayoutView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SignUpLayoutViewState();
}

class _SignUpLayoutViewState extends State<SignUpLayoutView> {
  List gender = ["Male", "Female", "Others"];
  String select;

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  Row addRadioButton(int btnValue, String title) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Radio(
          activeColor: Theme.of(context).primaryColor,
          value: gender[btnValue],
          groupValue: select,
          onChanged: (value) {
            setState(() {
              print(value);
              select = value;
            });
          },
        ),
        Text(title)
      ],
    );
  }

  @override
  Widget build(BuildContext context) => signUpLayout();

  Widget signUpLayout() => Container(
          child: SingleChildScrollView(
        padding: EdgeInsets.all(5),
        child: Stack(alignment: Alignment.topLeft, children: <Widget>[
          IconButton(
            padding: EdgeInsets.only(left: 10, top: 20),
            icon: Icon(Icons.arrow_back),
            color: Constants.appThemeColor,
            onPressed: () => Navigator.pop(context, false),
          ),
          Column(children: <Widget>[
            const SizedBox(
              height: 20,
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
              height: 40,
            ),
            UserTextInput(
              textEditController: _nameController,
              hintTextString: 'Enter your name',
              inputType: InputType.Default,
              enableBorder: true,
              themeColor: Theme.of(context).primaryColor,
              cornerRadius: 48.0,
              maxLength: 24,
              prefixIcon:
                  Icon(Icons.person, color: Theme.of(context).primaryColor),
              textColor: Colors.black,
              errorMessage: 'Name cannot be empty',
              labelText: 'Enter Name',
            ),
            UserTextInput(
              textEditController: _emailController,
              hintTextString: 'Email address',
              inputType: InputType.Email,
              enableBorder: true,
              cornerRadius: 48.0,
              maxLength: 24,
            ),
            UserTextInput(
              textEditController: _passwordController,
              hintTextString: 'Password',
              inputType: InputType.Password,
              enableBorder: true,
              cornerRadius: 48.0,
              maxLength: 16,
              prefixIcon:
                  Icon(Icons.lock, color: Theme.of(context).primaryColor),
            ),
            UserTextInput(
              textEditController: _confirmPasswordController,
              hintTextString: 'Confirm Password',
              inputType: InputType.Password,
              enableBorder: true,
              cornerRadius: 48.0,
              maxLength: 16,
              prefixIcon:
                  Icon(Icons.lock, color: Theme.of(context).primaryColor),
            ),
            UserTextInput(
              textEditController: _phoneController,
              hintTextString: 'Mobile Number',
              inputType: InputType.Number,
              enableBorder: true,
              cornerRadius: 48.0,
              maxLength: 10,
              errorMessage: 'Mobile number is not valid',
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Gender",
                  style: TextStyle(
                    color: Constants.appThemeColor,
                    fontFamily: Constants.OPEN_SANS,
                    fontWeight: FontWeight.w600,
                    fontSize: 14.0,
                  ),
                ),
                addRadioButton(0, 'Male'),
                addRadioButton(1, 'Female'),
                addRadioButton(2, 'Others'),
              ],
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
                      Constants.SIGN_UP,
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: Constants.OPEN_SANS,
                        fontWeight: FontWeight.w600,
                        fontSize: 14.0,
                      ),
                    )))
          ]),
        ]),
      ));
}
