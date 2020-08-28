import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:telemedicine_patient_app/constants/constants.dart';

class SlideDots extends StatelessWidget {
  bool isActive;
  SlideDots(this.isActive);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      margin: const EdgeInsets.symmetric(horizontal: 3.3),
      height: isActive ? 5 : 5,
      width: isActive ? 12 : 5,
      decoration: BoxDecoration(
        color: isActive ? Constants.appThemeColor : Colors.grey,
        border: isActive
            ? Border.all(
                color: Constants.appThemeColor,
                width: 2.0,
              )
            : Border.all(
                color: Colors.transparent,
                width: 2,
              ),
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
    );
  }
}
