import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lifechart/constants.dart';
import 'package:lifechart/sizeConfig.dart';

class TermsConditions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    var b = SizeConfig.screenWidth / 375;
    var h = SizeConfig.screenHeight / 812;
    return Scaffold(
      floatingActionButton: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.34),
              blurRadius: 17,
              spreadRadius: 0,
              offset: Offset(-1, 10),
            ),
          ],
        ),
        height: h * 50,
        margin: EdgeInsets.only(left: b * 30),
        child: MaterialButton(
          padding: EdgeInsets.symmetric(vertical: h * 13),
          color: ternary,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(b * 295),
          ),
          onPressed: () {},
          child: Container(
            alignment: Alignment.center,
            child: Text(
              'Agree',
              style: TextStyle(
                color: Colors.white,
                fontSize: b * 16,
                fontFamily: 'Museo700',
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.dark.copyWith(
          statusBarColor: Color(0xffa695f7).withOpacity(0.98),
        ),
        child: SafeArea(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(b * 20, h * 10, b * 20, h * 20),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color(0xffa695f7),
                        Color(0xff8869fd),
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(b * 35),
                      bottomRight: Radius.circular(b * 35),
                    ),
                  ),
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.chevron_left,
                          color: Colors.white,
                          size: b * 30,
                        ),
                      ),
                      Spacer(),
                      Text(
                        "Terms & Conditions",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: b * 18,
                          fontFamily: 'Museo700',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Spacer(),
                    ],
                  ),
                ),
                sh(25),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: b * 17),
                    child: RawScrollbar(
                      thumbColor: ternary,
                      thickness: b * 5,
                      radius: Radius.circular(b * 5),
                      interactive: true,
                      isAlwaysShown: true,
                      child: SingleChildScrollView(
                        padding: EdgeInsets.only(right: b * 22, left: b * 3),
                        physics: BouncingScrollPhysics(),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Read Our Terms &\nConditions",
                              style: TextStyle(
                                fontSize: b * 24,
                              ),
                            ),
                            sh(17),
                            point("1. Using Our Service",
                                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s. Lorem Ipsum has been."),
                            sh(20),
                            point("2. Your Account",
                                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s. Lorem Ipsum has been."),
                            sh(20),
                            point("3. Your Subscription",
                                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s. Lorem Ipsum has been."),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget point(String heading, String body) {
    var b = SizeConfig.screenWidth / 375;
    var h = SizeConfig.screenHeight / 812;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          heading,
          style: TextStyle(
            fontSize: b * 16,
            color: ternary,
            fontWeight: FontWeight.w600,
          ),
        ),
        sh(14),
        Text(
          body,
          style: TextStyle(
            fontSize: b * 13,
            height: 2,
            color: Colors.black.withOpacity(0.7),
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
