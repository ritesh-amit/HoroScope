import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lifechart/login.dart';
import 'package:lifechart/otp.dart';
import 'package:lifechart/sizeConfig.dart';

import 'constants.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final TextEditingController phone = TextEditingController();
  final TextEditingController first = TextEditingController();
  final TextEditingController last = TextEditingController();

  bool privacy = true;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    var b = SizeConfig.screenWidth / 375;
    var h = SizeConfig.screenHeight / 812;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: b * 24),
        width: SizeConfig.screenWidth,
        height: SizeConfig.screenHeight,
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
        child: SingleChildScrollView(
          child: Column(
            children: [
              sh(70),
              Image.asset('images/logo1.png', height: h * 128, width: b * 128),
              sh(27),
              Text(
                "Get Started",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: b * 26,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Museo700',
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
              sh(33),
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
                child: Row(
                  children: [
                    SizedBox(width: b * 20),
                    SvgPicture.asset(
                      'images/user.svg',
                      width: b * 20,
                      height: h * 20,
                    ),
                    Expanded(
                      child: TextFormField(
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: b * 16,
                          fontWeight: FontWeight.w500,
                        ),
                        controller: first,
                        keyboardType: TextInputType.name,
                        decoration: decInput("First Name"),
                      ),
                    ),
                  ],
                ),
              ),
              sh(10),
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
                  SvgPicture.asset(
                    'images/user.svg',
                    width: b * 20,
                    height: h * 20,
                  ),
                  Expanded(
                    child: TextFormField(
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: b * 16,
                        fontWeight: FontWeight.w500,
                      ),
                      controller: last,
                      keyboardType: TextInputType.name,
                      decoration: decInput("Last Name"),
                    ),
                  ),
                ]),
              ),
              sh(10),
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
              sh(26),
              InkWell(
                onTap: () {
                  setState(() {
                    privacy = !privacy;
                  });
                },
                child: Row(
                  children: [
                    SizedBox(width: b * 20),
                    Container(
                      height: 18,
                      width: 18,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(b * 2),
                        border: Border.all(
                          color: yellow,
                          width: b * 2,
                        ),
                      ),
                      child: privacy
                          ? FittedBox(
                              fit: BoxFit.contain,
                              child: Icon(
                                Icons.check,
                                color: yellow,
                              ),
                            )
                          : sh(0),
                    ),
                    SizedBox(width: b * 7),
                    Text(
                      "I accept the ",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: b * 11,
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Text(
                        "Terms & Conditions",
                        style: TextStyle(
                          color: Color(0xffFFEDC00),
                          fontSize: b * 11,
                        ),
                      ),
                    ),
                    Text(
                      " and ",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: b * 11,
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Text(
                        "Privacy Policy",
                        style: TextStyle(
                          color: Color(0xffFFEDC00),
                          fontSize: b * 11,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              sh(76),
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
              sh(26),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an Account? ",
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
                          builder: (context) => Login(),
                        ),
                      );
                    },
                    child: Text(
                      "Login",
                      style: TextStyle(
                        color: Color(0xffFFEDC00),
                        fontSize: b * 18,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ],
              ),
              sh(200),
            ],
          ),
        ),
      ),
    );
  }
}
