import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lifechart/constants.dart';
import 'package:lifechart/sizeConfig.dart';
import 'messageBox.dart';

class ChatScreen extends StatefulWidget {
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final TextEditingController message = TextEditingController();
  final bool getImage1 = false;
  bool messageEmpty = true;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    var h = SizeConfig.screenHeight / 812;
    var b = SizeConfig.screenWidth / 375;
    return Scaffold(
      backgroundColor: Color(0xffF5F5F5),
      body: SafeArea(
        child: Stack(children: [
          Column(
            children: [
              Expanded(
                child: Container(
                  child: Column(children: [
                    Container(
                      padding:
                          EdgeInsets.fromLTRB(b * 20, h * 10, b * 20, h * 14),
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
                              Icons.chevron_left_rounded,
                              color: Color(0xffffffff),
                              size: b * 28,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: b * 6, right: b * 21),
                            width: b * 48,
                            height: h * 48,
                            decoration: BoxDecoration(
                              color: Color(0xff6f6f6f),
                              shape: BoxShape.circle,
                            ),
                            child: InkWell(
                              onTap: () {},
                              child: CachedNetworkImage(
                                imageUrl:
                                    'https://images.unsplash.com/photo-1517423440428-a5a00ad493e8',
                                fit: BoxFit.cover,
                                imageBuilder: (context, imageProvider) =>
                                    Container(
                                  width: b * 48,
                                  height: h * 48,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                      image: imageProvider,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: InkWell(
                              onTap: () {},
                              child: Text(
                                "AMIT SHUKLA",
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: b * 17,
                                  fontFamily: 'Museo700',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {},
                            child: Icon(
                              Icons.call,
                              color: Colors.white,
                              size: b * 20,
                            ),
                          ),
                          SizedBox(width: b * 15),
                          InkWell(
                            onTap: () {},
                            child: SvgPicture.asset(
                              'images/video.svg',
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: ListView.builder(
                        padding: EdgeInsets.zero,
                        physics: BouncingScrollPhysics(),
                        reverse: true,
                        itemCount: 12,
                        itemBuilder: (context, index) {
                          return MessageBox(
                            isImage: false,
                            isMe: true,
                            isAudio: true,
                            imageLink:
                                'https://images.unsplash.com/photo-1517423440428-a5a00ad493e8',
                            text:
                                "Hey, How can I help you Do you have any problem?",
                          );
                        },
                      ),
                    ),
                    SizedBox(
                      height: h * 40,
                      width: SizeConfig.screenWidth,
                      child: ListView.builder(
                        physics: BouncingScrollPhysics(),
                        padding: EdgeInsets.only(
                            left: b * 15, bottom: h * 5, top: h * 5),
                        itemCount: 10,
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext context, int index) {
                          return InkWell(
                            onTap: () {
                              setState(() {
                                message.text = message.text + "Amit Shukla";
                              });
                            },
                            child: Container(
                              margin: EdgeInsets.only(right: b * 7),
                              alignment: Alignment.center,
                              padding: EdgeInsets.symmetric(horizontal: b * 9),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(b * 100),
                                border: Border.all(
                                    color: Color(0xffE6E6E6), width: b * 1),
                              ),
                              child: Text(
                                "AMIT SHUKLA",
                                style: TextStyle(
                                  color: Color(0xff76848B),
                                  fontSize: b * 12,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    Container(
                      padding:
                          EdgeInsets.fromLTRB(b * 19, h * 17, b * 9, h * 15),
                      height: h * 80,
                      width: SizeConfig.screenWidth,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.05),
                            blurRadius: 6,
                            spreadRadius: 0,
                            offset: Offset(0, -2),
                          ),
                        ],
                        color: Color(0xfffffffff),
                      ),
                      child: Row(
                        children: [
                          InkWell(
                            onTap: () {},
                            child: SvgPicture.asset(
                              'images/upload_image.svg',
                              height: h * 49,
                              width: b * 49,
                              allowDrawingOutsideViewBox: true,
                            ),
                          ),
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                color: Color(0xfffffffff),
                                border: Border.all(
                                  color: Color(0xffe6e6e6),
                                  width: b * 1,
                                ),
                                borderRadius: BorderRadius.circular(b * 300),
                              ),
                              alignment: Alignment.center,
                              padding: EdgeInsets.only(right: b * 7),
                              margin: EdgeInsets.symmetric(
                                  vertical: 0, horizontal: b * 8),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: TextField(
                                      keyboardType: TextInputType.multiline,
                                      controller: message,
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: b * 14,
                                        fontWeight: FontWeight.w400,
                                      ),
                                      onChanged: (text) {
                                        messageEmpty = text == "";
                                        setState(() {});
                                      },
                                      decoration: InputDecoration(
                                        isDense: true,
                                        enabledBorder: InputBorder.none,
                                        focusedBorder: InputBorder.none,
                                        border: InputBorder.none,
                                        hintStyle: TextStyle(
                                          color: Color(0xff244A66)
                                              .withOpacity(0.3),
                                          fontSize: b * 14,
                                          fontWeight: FontWeight.w400,
                                        ),
                                        hintText: 'Type a message...',
                                        contentPadding: EdgeInsets.symmetric(
                                            vertical: h * 8,
                                            horizontal: b * 10),
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    child: Container(
                                      height: h * 35,
                                      alignment: Alignment.center,
                                      width: b * 35,
                                      padding: EdgeInsets.only(
                                        right: b * 7,
                                        left: b * 5,
                                        top: h * 3,
                                      ),
                                      decoration: BoxDecoration(
                                        color: ternary,
                                        shape: BoxShape.circle,
                                      ),
                                      child: SvgPicture.asset(
                                        'images/Send.svg',
                                        width: b * 16,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ]),
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
