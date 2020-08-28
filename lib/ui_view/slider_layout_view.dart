import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:telemedicine_patient_app/constants/constants.dart';
import 'package:telemedicine_patient_app/model/slider.dart';
import 'package:telemedicine_patient_app/widgets/slide_dots.dart';
import 'package:telemedicine_patient_app/widgets/slide_items/slide_item.dart';
import 'package:telemedicine_patient_app/screens/signin_page.dart';

class SliderLayoutView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SliderLayoutViewState();
}

class _SliderLayoutViewState extends State<SliderLayoutView> {
  int _currentPage = 0;
  final PageController _pageController = PageController(initialPage: 0);

  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 5), (Timer timer) {
      if (_currentPage < 2) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  _onPageChanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) => topSliderLayout();

  Widget topSliderLayout() => Container(
        child: Padding(
            padding: EdgeInsets.all(5.0),
            child: Stack(
              alignment: AlignmentDirectional.bottomCenter,
              children: <Widget>[
                PageView.builder(
                  scrollDirection: Axis.horizontal,
                  controller: _pageController,
                  onPageChanged: _onPageChanged,
                  itemCount: sliderArrayList.length,
                  itemBuilder: (ctx, i) => SlideItem(i),
                ),
                Stack(
                  alignment: AlignmentDirectional.topStart,
                  children: <Widget>[
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: EdgeInsets.only(
                            right: 5.0, bottom: 25.0, left: 5.0),
                        child: SizedBox(
                            width: 250,
                            height: 40,
                            child: RaisedButton(
                                color: Constants.appThemeColor,
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SignInPage()),
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
                                ))),
                      ),
                    ),
                    Container(
                      alignment: AlignmentDirectional.topEnd,
                      margin: EdgeInsets.only(top: 35.0, right: 15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          for (int i = 0; i < sliderArrayList.length; i++)
                            if (i == _currentPage)
                              SlideDots(true)
                            else
                              SlideDots(false)
                        ],
                      ),
                    ),
                  ],
                )
              ],
            )),
      );
}
