import 'package:flutter/material.dart';

class SizeConfig {
  MediaQueryData _mediaQueryData = MediaQueryData();
  static double screenWidth = 0;
  static double screenHeight = 0;
  static double _safeAreaHorizontal = 0;
  static double _safeAreaVertical = 0;
  static double b = 0;
  static double v = 0;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenHeight = _mediaQueryData.size.height;
    screenWidth = _mediaQueryData.size.width;
    _safeAreaHorizontal =
        _mediaQueryData.padding.left + _mediaQueryData.padding.right;
    _safeAreaVertical =
        _mediaQueryData.padding.top + _mediaQueryData.padding.bottom;
    b = (screenWidth - _safeAreaHorizontal) / 100;
    v = (screenHeight - _safeAreaVertical) / 100;
  }
}

SizedBox sh(double h) {
  return SizedBox(height: SizeConfig.screenHeight * h / 812);
}

InputDecoration decInput(String hintText) {
  var h = SizeConfig.screenHeight / 812;
  var b = SizeConfig.screenWidth / 375;

  return InputDecoration(
    hintText: hintText,
    hintStyle: TextStyle(
      color: Colors.white,
      fontSize: b * 16,
      letterSpacing: 0,
      fontWeight: FontWeight.w400,
    ),
    counterText: "",
    contentPadding: EdgeInsets.symmetric(
      horizontal: b * 20,
      vertical: h * 15.5,
    ),
    enabledBorder: InputBorder.none,
    focusedBorder: InputBorder.none,
    errorBorder: InputBorder.none,
    border: InputBorder.none,
  );
}
