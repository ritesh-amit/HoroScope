import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lifechart/constants.dart';
import 'package:lifechart/sizeConfig.dart';

class Home extends StatelessWidget {
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
                        onTap: () {}, //open drawer
                        child: Image.asset(
                          'images/more.png',
                          width: b * 20,
                        ),
                      ),
                      Spacer(),
                      Text(
                        "Life Chart",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: b * 18,
                          fontFamily: 'Museo700',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Spacer(),
                      Icon(Icons.notifications_outlined, color: Colors.white),
                    ],
                  ),
                ),
                Container(
                  color: Colors.white,
                  width: SizeConfig.screenWidth,
                  height: h * (195 + 37),
                  child: ListView.builder(
                    shrinkWrap: true,
                    padding: EdgeInsets.only(left: b * 21, top: h * 30),
                    scrollDirection: Axis.horizontal,
                    physics: BouncingScrollPhysics(),
                    itemCount: 4,
                    itemBuilder: (BuildContext ctxt, int index) {
                      return Stack(
                        alignment: Alignment.topCenter,
                        children: [
                          Container(
                            height: h * 165,
                            padding: EdgeInsets.symmetric(horizontal: b * 10),
                            margin: EdgeInsets.only(right: b * 20),
                            width: SizeConfig.screenWidth * 0.8,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Color.fromRGBO(114, 124, 142, 0.25),
                                  blurRadius: 27,
                                  spreadRadius: 0,
                                  offset: Offset(0, 8),
                                ),
                              ],
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(b * 15),
                              image: DecorationImage(
                                image: AssetImage('images/image.jpg'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Positioned(
                            top: h * 150,
                            child: InkWell(
                              onTap: () {},
                              child: Container(
                                padding: EdgeInsets.fromLTRB(
                                    b * 5.14, h * 4.5, 19.39, h * 4.5),
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color:
                                          Color.fromRGBO(114, 124, 142, 0.25),
                                      blurRadius: 15,
                                      spreadRadius: 0,
                                      offset: Offset(0, 1),
                                    ),
                                  ],
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(b * 200),
                                ),
                                child: Row(
                                  children: [
                                    Container(
                                      height: h * 26,
                                      width: b * 26,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: ternary,
                                      ),
                                      child: Icon(Icons.arrow_right_alt,
                                          color: Colors.white),
                                    ),
                                    SizedBox(width: b * 10),
                                    Text(
                                      "Order Now",
                                      style: TextStyle(
                                        color: ternary,
                                        letterSpacing: 0.6,
                                        fontSize: b * 10,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
                Expanded(
                  child: SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(width: b * 10),
                            cont("Daily Horoscope", 'horoscope'),
                            cont("Free Kundli", 'esoteric'),
                            cont("Horoscope Matching", 'relationship'),
                            cont("Astrology Blog", 'reading-book'),
                            SizedBox(width: b * 10),
                          ],
                        ),
                        SizedBox(height: h * 14),
                        Padding(
                          padding: EdgeInsets.only(left: b * 20),
                          child: Text(
                            "Add Product",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: b * 20,
                              fontFamily: "Museo700",
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        SizedBox(height: h * 16),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: b * 27),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                children: [
                                  InkWell(
                                    onTap: () {},
                                    child: Container(
                                      padding: EdgeInsets.only(
                                        bottom: h * 54,
                                        top: h * 17,
                                        left: b * 14,
                                        right: b * 16,
                                      ),
                                      width: b * 156,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(b * 30),
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
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            SvgPicture.asset(
                                              'images/chat.svg',
                                              color: Colors.white,
                                              width: b * 16.5,
                                              height: h * 16.5,
                                            ),
                                            sh(20.5),
                                            Row(
                                              children: [
                                                Text(
                                                  "Chat with\nAstrologer",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontFamily: 'Museo700',
                                                    fontSize: b * 14,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                                Spacer(),
                                                Icon(
                                                  Icons.arrow_right_alt,
                                                  color: Colors.white,
                                                ),
                                              ],
                                            ),
                                          ]),
                                    ),
                                  ),
                                  SizedBox(height: h * 10),
                                  InkWell(
                                    onTap: () {},
                                    child: Container(
                                      padding: EdgeInsets.fromLTRB(
                                          b * 14, h * 18, b * 17, h * 23),
                                      width: b * 156,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(b * 30),
                                        gradient: LinearGradient(
                                          colors: [
                                            Color(0xff8EF3CC),
                                            Color(0xff43E0A2),
                                          ],
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                        ),
                                      ),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            SvgPicture.asset(
                                              'images/video.svg',
                                              color: Colors.white,
                                              width: b * 20.71,
                                              height: h * 13.18,
                                            ),
                                            sh(13.82),
                                            Row(
                                              children: [
                                                Text(
                                                  "Live On\nAstro TV",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: b * 14,
                                                    fontFamily: 'Museo700',
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ]),
                                    ),
                                  ),
                                ],
                              ),
                              Spacer(),
                              Column(
                                children: [
                                  InkWell(
                                    onTap: () {},
                                    child: Container(
                                      padding: EdgeInsets.fromLTRB(
                                          b * 15.5, h * 16.8, b * 17, h * 25),
                                      width: b * 156,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(b * 30),
                                        gradient: LinearGradient(
                                          colors: [
                                            Color(0xffFEDC00),
                                            Color(0xFFE5A40C),
                                          ],
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                        ),
                                      ),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Icon(
                                              Icons.call_outlined,
                                              color: Colors.white,
                                              size: b * 16.1,
                                            ),
                                            sh(10.1),
                                            Row(
                                              children: [
                                                Text(
                                                  "Talk to\nAstrologer",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: b * 14,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontFamily: 'Museo700'),
                                                ),
                                              ],
                                            ),
                                          ]),
                                    ),
                                  ),
                                  SizedBox(height: h * 10),
                                  InkWell(
                                    onTap: () {},
                                    child: Container(
                                      padding: EdgeInsets.only(
                                        bottom: h * 54,
                                        top: h * 19.25,
                                        left: b * 15,
                                        right: b * 16,
                                      ),
                                      width: b * 156,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(b * 30),
                                        gradient: LinearGradient(
                                          colors: [
                                            Color(0xff8AD8FD),
                                            Color(0xff5CBDEE),
                                          ],
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                        ),
                                      ),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            SvgPicture.asset(
                                              'images/shopping.svg',
                                              color: Colors.white,
                                              height: h * 22,
                                              width: b * 23,
                                            ),
                                            sh(12),
                                            Row(
                                              children: [
                                                Text(
                                                  "Shop at\nAstro Mall",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: b * 14,
                                                    fontFamily: 'Museo700',
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ]),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        sh(20),
                      ],
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

  Widget cont(String title, String image) {
    var b = SizeConfig.screenWidth / 375;
    var h = SizeConfig.screenHeight / 812;

    return InkWell(
      radius: b * 20,
      onTap: () {},
      child: Container(
        width: SizeConfig.screenWidth * 0.20,
        padding: EdgeInsets.fromLTRB(title == "Free Kundli" ? b * 15 : b * 10,
            h * 19, title == "Free Kundli" ? b * 15 : b * 10, h * 11),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Color(0x14000000),
              blurRadius: 21,
              spreadRadius: 1,
              offset: Offset(0, 4),
            ),
          ],
          borderRadius: BorderRadius.circular(b * 20),
        ),
        child: Column(
          children: [
            Image.asset('images/$image.png', height: h * 28, width: b * 28),
            SizedBox(height: h * 20),
            Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xff252C39),
                fontSize: b * 10,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
