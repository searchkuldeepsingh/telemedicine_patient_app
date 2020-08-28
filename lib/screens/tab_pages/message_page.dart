import 'package:flutter/material.dart';
import 'package:telemedicine_patient_app/constants/constants.dart';
import 'package:telemedicine_patient_app/ui_view/tab_ui_view/message_layuot_view.dart';

class Chat extends StatefulWidget {
  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          Constants.CHAT,
          style: TextStyle(
              fontFamily: Constants.OPEN_SANS,
              fontSize: 20,
              fontWeight: FontWeight.bold),
        ),
        automaticallyImplyLeading: false,
      ),
      body: MessageLayoutView(),
    );
  }
}
