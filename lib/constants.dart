import 'package:flutter/material.dart';
import 'package:lifechart/sizeConfig.dart';

const Color primary = Color(0xff252C39);
const Color purple1 = Color(0xffA895FD);
const Color purple2 = Color(0xff8866FF);
const Color yellow = Color(0xffFEDC00);
const Color ternary = Color(0xff8B6BFE);

Map<int, Color> swatch = {
  50: Color(0xff8B6BFE).withOpacity(0.1),
  100: Color(0xff8B6BFE).withOpacity(0.2),
  200: Color(0xff8B6BFE).withOpacity(0.3),
  300: Color(0xff8B6BFE).withOpacity(0.4),
  400: Color(0xff8B6BFE).withOpacity(0.5),
  500: Color(0xff8B6BFE).withOpacity(0.6),
  600: Color(0xff8B6BFE).withOpacity(0.7),
  700: Color(0xff8B6BFE).withOpacity(0.8),
  800: Color(0xff8B6BFE).withOpacity(0.9),
  900: Color(0xff8B6BFE).withOpacity(1.0),
};
MaterialColor colorSwatch = MaterialColor(0xff8B6BFE, swatch);
InputDecoration inputDec(String _hint) {
  var b = SizeConfig.screenWidth / 375;
  var h = SizeConfig.screenHeight / 812;

  return InputDecoration(
    hintText: _hint,
    hintStyle: TextStyle(
      color: Colors.black.withOpacity(0.7),
      fontSize: b * 14,
      fontWeight: FontWeight.w400,
    ),
    contentPadding: EdgeInsets.symmetric(horizontal: b * 0, vertical: h * 16),
    enabledBorder: UnderlineInputBorder(
      borderSide: BorderSide(
        color: Color(0xffD8D8D8),
      ),
    ),
    focusedBorder: UnderlineInputBorder(
      borderSide: BorderSide(
        color: Color(0xffD8D8D8),
      ),
    ),
  );
}
