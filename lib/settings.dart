import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lifechart/aboutUs.dart';
import 'package:lifechart/audioPlay.dart';
import 'package:lifechart/constants.dart';
import 'package:lifechart/contactUs.dart';
import 'package:lifechart/notifications.dart';
import 'package:lifechart/privacyPolicy.dart';
import 'package:lifechart/profile.dart';
import 'package:lifechart/sizeConfig.dart';
import 'package:lifechart/terms.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    var b = SizeConfig.screenWidth / 375;
    var h = SizeConfig.screenHeight / 812;
    return Scaffold(
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
                      // Icon(
                      //   Icons.chevron_left,
                      //   color: Colors.white,
                      //   size: b * 30,
                      // ),
                      Spacer(),
                      Text(
                        "Settings",
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
                sh(54),
                SettingContainer(
                  title: "About Us",
                  icon: 'metro-user',
                  page: AboutUs(),
                ),
                SettingContainer(
                  title: "Notification",
                  icon: 'metro-user',
                  page: Notifications(),
                ),
                SettingContainer(
                  title: "Terms & Conditions",
                  icon: 'file',
                  page: TermsConditions(),
                ),
                SettingContainer(
                  title: "Privacy Policy",
                  icon: 'shield',
                  page: PrivacyPolicy(),
                ),
                SettingContainer(
                  title: "Contact Us",
                  icon: 'chat',
                  page: ContactUs(),
                ),
                SettingContainer(
                  title: "Change Password",
                  icon: 'metro-user',
                  page: Profile(),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: b * 20),
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
                      width: SizeConfig.screenWidth,
                      child: Text(
                        'Log Out',
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
                sh(46),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SettingContainer extends StatelessWidget {
  String title;
  String icon;
  dynamic page;
  SettingContainer({
    required this.title,
    required this.icon,
    this.page,
  });

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    var b = SizeConfig.screenWidth / 375;
    var h = SizeConfig.screenHeight / 812;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: b * 23),
      child: InkWell(
        highlightColor: Colors.transparent,
        splashColor: Colors.transparent,
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) {
              return page;
            }),
          );
        },
        child: Container(
          margin: EdgeInsets.only(bottom: h * 20),
          padding: EdgeInsets.fromLTRB(b * 20, h * 7.5, b * 20, h * 7.5),
          decoration: BoxDecoration(
            color: Color(0xfff6f6f6),
            borderRadius: BorderRadius.circular(b * 295),
          ),
          child: Row(
            children: [
              title != 'Notification'
                  ? SvgPicture.asset(
                      'images/$icon.svg',
                      color: Colors.black,
                    )
                  : Icon(Icons.notifications_outlined),
              SizedBox(width: b * 13),
              Container(
                color: Color(0xff244A66).withOpacity(0.1),
                width: b * 1,
                height: h * 40,
              ),
              SizedBox(width: b * 13),
              Text(
                title,
                style: TextStyle(
                  color: Color(0xff252C39),
                  fontSize: b * 15,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Spacer(),
              Icon(
                Icons.chevron_right_rounded,
                color: Color(0xff252C39),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
