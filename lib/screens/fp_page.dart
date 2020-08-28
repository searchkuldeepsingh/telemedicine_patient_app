import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:telemedicine_patient_app/ui_view/fp_layuot_view.dart';

class FPassPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _FPassPageState();
}

class _FPassPageState extends State<FPassPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF5F5F5),
      body: forgotPassBody(),
    );
  }

  Widget forgotPassBody() => Container(
        child: FPassLayoutView(),
      );
}
