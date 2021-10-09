import 'package:flutter/material.dart';
import 'package:lifechart/main.dart';
import 'package:lifechart/sizeConfig.dart';
import 'package:pinput/pin_put/pin_put.dart';

import 'constants.dart';

class Otp extends StatefulWidget {
  @override
  _OtpState createState() => _OtpState();
}

class _OtpState extends State<Otp> {
  final _pinPutController = TextEditingController();
  final _pinPutFocusNode = FocusNode();
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    var b = SizeConfig.screenWidth / 375;
    var h = SizeConfig.screenHeight / 812;
    BoxDecoration pinPutDecoration = BoxDecoration(
      color: Colors.white.withOpacity(0.59),
      boxShadow: [
        BoxShadow(
          color: Color(0x2324240F),
          blurRadius: b * 10,
          spreadRadius: 0,
          offset: Offset(0, 0),
        ),
      ],
      borderRadius: BorderRadius.circular(b * 6),
    );

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(children: [
        Expanded(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: b * 24),
            width: SizeConfig.screenWidth,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xffA895FD),
                  Color(0xff8866FF),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: Column(
              children: [
                sh(100),
                Image.asset('images/logo1.png',
                    height: h * 128, width: b * 128),
                sh(27),
                Text(
                  "OTP",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: b * 26,
                    fontWeight: FontWeight.w700,
                    fontFamily: "Museo700",
                  ),
                ),
                sh(20),
                Text(
                  "Please Enter the Otp sent to the mobile number 6387246025",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: b * 16,
                  ),
                ),
                sh(60),
                Container(
                  width: SizeConfig.screenWidth,
                  child: PinPut(
                    withCursor: true,
                    fieldsCount: 6,
                    textStyle: TextStyle(
                        fontSize: b * 18,
                        color: Colors.white,
                        fontWeight: FontWeight.w600),
                    eachFieldWidth: 45,
                    eachFieldHeight: 45,
                    animationCurve: Curves.decelerate,
                    focusNode: _pinPutFocusNode,
                    controller: _pinPutController,
                    submittedFieldDecoration: pinPutDecoration,
                    selectedFieldDecoration: pinPutDecoration,
                    followingFieldDecoration: pinPutDecoration,
                  ),
                ),
                sh(25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Didn\'t Receive OTP? ',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: b * 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Text(
                        'Resend it!',
                        style: TextStyle(
                          color: yellow,
                          fontSize: b * 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
                Spacer(),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomeMain(),
                      ),
                    );
                  },
                  child: Container(
                    height: h * 68,
                    width: b * 68,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: yellow,
                      boxShadow: [
                        BoxShadow(
                          color: yellow.withOpacity(0.8),
                          blurRadius: b * 17,
                          spreadRadius: 0,
                          offset: Offset(0, 6),
                        ),
                      ],
                    ),
                    child: Icon(Icons.arrow_right_alt,
                        color: Colors.black, size: b * 32),
                  ),
                ),
                Spacer(),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
