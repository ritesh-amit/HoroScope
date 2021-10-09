import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lifechart/chatScreen.dart';
import 'package:lifechart/sizeConfig.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Chats extends StatefulWidget {
  @override
  _ChatsState createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  List iconlist = [
    {
      'color': Color(0xff00B050),
      'icon': Icons.check_rounded,
    },
    {
      'color': Color(0xffFF0000),
      'icon': Icons.close,
    },
    {
      'color': Color(0xffFFC000),
      'icon': Icons.access_time,
    }
  ];
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    var b = SizeConfig.screenWidth / 414;
    var h = SizeConfig.screenHeight / 896;
    return Scaffold(
      backgroundColor: Colors.white,
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.dark.copyWith(
          statusBarColor: Color(0xffa695f7).withOpacity(0.98),
        ),
        child: SafeArea(
          child: Container(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
                      "Astro Chats",
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
              sh(16),
              Expanded(
                child: ListView.builder(
                  itemCount: 9,
                  shrinkWrap: true,
                  physics: BouncingScrollPhysics(),
                  padding: EdgeInsets.symmetric(
                      horizontal: b * 20, vertical: h * 20),
                  itemBuilder: (BuildContext context, int index) {
                    return InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) {
                            return ChatScreen();
                          }),
                        );
                      },
                      child: Padding(
                        padding: EdgeInsets.only(bottom: h * 20),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: h * 75,
                              width: b * 70,
                              child: Stack(
                                alignment: Alignment.topCenter,
                                children: [
                                  Positioned(
                                    left: 0,
                                    top: h * 0,
                                    child: Container(
                                      height: h * 70,
                                      width: b * 65,
                                      child: CachedNetworkImage(
                                        imageUrl:
                                            'https://images.unsplash.com/photo-1517423440428-a5a00ad493e8',
                                        fit: BoxFit.cover,
                                        imageBuilder:
                                            (context, imageProvider) =>
                                                Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(b * 10),
                                            image: DecorationImage(
                                              image: imageProvider,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    right: 0,
                                    bottom: 0,
                                    child: CircleAvatar(
                                      backgroundColor: Colors.red,
                                      radius: b * 7,
                                      child: Icon(Icons.access_time,
                                          color: Colors.white, size: b * 10),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: b * 18),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  "PT. Shree Devi",
                                  style: TextStyle(
                                    fontSize: b * 14,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                sh(5),
                                Row(
                                  children: [
                                    Text(
                                      "Vedic, Numerology, Vasstu",
                                      style: TextStyle(
                                        fontSize: b * 10,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    Text(
                                      " | English, Hindi",
                                      style: TextStyle(
                                        fontSize: b * 10,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                                sh(5),
                                Row(
                                  children: [
                                    Text(
                                      "Exp: 9 Years | ",
                                      style: TextStyle(
                                        fontSize: b * 10,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    RatingBar.builder(
                                      initialRating: 3,
                                      itemSize: b * 12,
                                      minRating: 1,
                                      direction: Axis.horizontal,
                                      allowHalfRating: true,
                                      itemCount: 5,
                                      itemPadding:
                                          EdgeInsets.symmetric(horizontal: 0),
                                      itemBuilder: (context, _) => Icon(
                                        Icons.star,
                                        color: Color(0xffffc103),
                                      ),
                                      onRatingUpdate: (rating) {
                                        print(rating);
                                      },
                                    ),
                                  ],
                                ),
                                sh(5),
                                Text(
                                  "\u20B9 74/Min",
                                  style: TextStyle(
                                    color: Color(0xff00B050),
                                    fontSize: b * 12,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
