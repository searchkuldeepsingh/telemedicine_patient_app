import 'package:flutter/material.dart';
import 'package:telemedicine_patient_app/constants/constants.dart';
import 'package:telemedicine_patient_app/ui_view/tab_ui_view/profile_layuot_view.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          Constants.PROFILE,
          style: TextStyle(
              fontFamily: Constants.OPEN_SANS,
              fontSize: 20,
              fontWeight: FontWeight.bold),
        ),
        automaticallyImplyLeading: false,
      ),
      body: ProfileLayoutView(),
    );
  }
}
