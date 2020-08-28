import 'package:flutter/material.dart';
import 'package:telemedicine_patient_app/constants/constants.dart';
import 'package:telemedicine_patient_app/ui_view/tab_ui_view/dashboard_layuot_view.dart';
import 'package:telemedicine_patient_app/widgets/navDrawer/navDrawer.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          Constants.HOME,
          style: TextStyle(
              fontFamily: Constants.OPEN_SANS,
              fontSize: 20,
              fontWeight: FontWeight.bold),
        ),
        automaticallyImplyLeading: false,
      ),
      drawer: NavDrawer(),
      body: DashBoardLayoutView(),
    );
  }
}
