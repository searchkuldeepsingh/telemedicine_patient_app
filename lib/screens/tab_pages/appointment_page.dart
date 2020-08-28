import 'package:flutter/material.dart';
import 'package:telemedicine_patient_app/constants/constants.dart';
import 'package:telemedicine_patient_app/ui_view/tab_ui_view/appointment_layuot_view.dart';

class Appointment extends StatefulWidget {
  @override
  _AppointmentState createState() => _AppointmentState();
}

class _AppointmentState extends State<Appointment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          Constants.APPOINTMENT,
          style: TextStyle(
              fontFamily: Constants.OPEN_SANS,
              fontSize: 20,
              fontWeight: FontWeight.bold),
        ),
        automaticallyImplyLeading: false,
      ),
      body: AppointmentLayoutView(),
    );
  }
}
