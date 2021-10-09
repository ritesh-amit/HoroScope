import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lifechart/signUp.dart';
import 'package:lifechart/sizeConfig.dart';
import 'constants.dart';
import 'otp.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController phone = TextEditingController();
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    var b = SizeConfig.screenWidth / 375;
    var h = SizeConfig.screenHeight / 812;

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
                sh(70),
                Image.asset('images/logo1.png',
                    height: h * 128, width: b * 128),
                sh(27),
                Text(
                  "Welcome",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: b * 26,
                    fontWeight: FontWeight.w700,
                    fontFamily: "Museo700",
                  ),
                ),
                sh(6),
                Text(
                  "Continue as Guest",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: b * 16,
                  ),
                ),
                Spacer(),
                Container(
                  width: SizeConfig.screenWidth,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.59),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x2324240F),
                        blurRadius: b * 10,
                        spreadRadius: 0,
                        offset: Offset(0, 0),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(b * 66),
                  ),
                  child: Row(children: [
                    SizedBox(width: b * 20),
                    Icon(
                      Icons.call,
                      size: b * 20,
                      color: yellow,
                    ),
                    Expanded(
                      child: TextFormField(
                        maxLength: 10,
                        style: TextStyle(
                          color: Colors.white,
                          letterSpacing: 2,
                          fontSize: b * 16,
                          fontWeight: FontWeight.w500,
                        ),
                        controller: phone,
                        keyboardType: TextInputType.phone,
                        decoration: decInput("Enter Phone Number"),
                      ),
                    ),
                  ]),
                ),
                Spacer(),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Otp(),
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
                sh(31),
                Text(
                  "OR CONNECT USING",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: b * 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                sh(26),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: SvgPicture.asset(
                        'images/facebook.svg',
                      ),
                    ),
                    SizedBox(width: b * 34),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        height: h * 34,
                        width: b * 34,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: SvgPicture.asset(
                          'images/google.svg',
                        ),
                      ),
                    ),
                  ],
                ),
                sh(64),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account? ",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: b * 18,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SignUp(),
                          ),
                        );
                      },
                      child: Text(
                        "Sign up",
                        style: TextStyle(
                          color: Color(0xffFFEDC00),
                          fontSize: b * 18,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ],
                ),
                sh(40),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
