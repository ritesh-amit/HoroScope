import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lifechart/constants.dart';
import 'package:lifechart/sizeConfig.dart';

class Notifications extends StatelessWidget {
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
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(Icons.chevron_left, color: Colors.white),
                      ),
                      Spacer(),
                      Text(
                        "Notifications",
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
                Expanded(
                  child: ListView.builder(
                    itemCount: 10,
                    shrinkWrap: true,
                    physics: BouncingScrollPhysics(),
                    padding: EdgeInsets.symmetric(
                        vertical: h * 24, horizontal: b * 15),
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        padding: EdgeInsets.symmetric(
                            vertical: h * 15, horizontal: b * 13),
                        margin: EdgeInsets.only(bottom: h * 20),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(b * 12),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              blurRadius: 2,
                              spreadRadius: 0,
                              offset: Offset(0, 1),
                            ),
                          ],
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: h * 40,
                              width: b * 40,
                              decoration: BoxDecoration(
                                color: purple1,
                                shape: BoxShape.circle,
                              ),
                            ),
                            SizedBox(width: b * 21),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Beason sent you a message Beason sent you a message",
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      color: Color(0xff252C39),
                                      fontSize: b * 13,
                                    ),
                                  ),
                                  sh(3),
                                  Text(
                                    "Beason sent you a message",
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      color: Color(0xff252C39).withOpacity(0.7),
                                      fontSize: b * 12,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Text(
                              "3 min",
                              style: TextStyle(
                                color: Color(0xff252C39).withOpacity(0.7),
                                fontSize: b * 12,
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
