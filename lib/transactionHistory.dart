import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lifechart/sizeConfig.dart';

class TransactionHistory extends StatelessWidget {
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
            child: Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: h * 231,
                      alignment: Alignment.topCenter,
                      padding:
                          EdgeInsets.fromLTRB(b * 20, h * 10, b * 20, h * 0),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Color(0xffa695f7),
                            Color(0xff8866FF),
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
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
                            "Transaction History",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: b * 18,
                              fontFamily: 'Museo700',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Spacer(),
                          Icon(Icons.notifications_outlined,
                              color: Colors.white),
                        ],
                      ),
                    ),
                  ],
                ),
                Positioned(
                  top: h * 190,
                  child: Container(
                    width: SizeConfig.screenWidth,
                    height: SizeConfig.screenHeight,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(b * 35),
                        topRight: Radius.circular(b * 35),
                      ),
                    ),
                    child: Column(
                      children: [
                        Expanded(
                          child: ListView.builder(
                            padding: EdgeInsets.only(
                                top: h * 116, left: b * 18, right: b * 18),
                            itemCount: 15,
                            shrinkWrap: true,
                            physics: BouncingScrollPhysics(),
                            itemBuilder: (BuildContext context, int index) {
                              return Column(
                                children: [
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Name of the person",
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                              style: TextStyle(
                                                fontSize: b * 16,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                            sh(6),
                                            Text(
                                              "Time Stamp",
                                              style: TextStyle(
                                                fontSize: b * 13,
                                                color: Colors.black
                                                    .withOpacity(0.7),
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Text(
                                        "+50.00",
                                        style: TextStyle(
                                          fontSize: b * 20,
                                          ////for Deduction
                                          //color:Color(0xffFC777C),

                                          color: Color(0xff27B77D),
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ],
                                  ),
                                  sh(13.5),
                                  Container(
                                    color: Color(0xff707070).withOpacity(0.1),
                                    height: h * 1,
                                  ),
                                  sh(18.5),
                                ],
                              );
                            },
                          ),
                        ),
                        sh(260),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: h * 105,
                  child: Container(
                    width: b * 327,
                    margin: EdgeInsets.symmetric(horizontal: b * 24),
                    padding:
                        EdgeInsets.fromLTRB(b * 20, h * 13, b * 11, h * 20),
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xff0000000).withOpacity(0.16),
                          blurRadius: b * 6,
                          spreadRadius: 0,
                          offset: Offset(0, 3),
                        ),
                      ],
                      borderRadius: BorderRadius.circular(b * 15),
                      gradient: LinearGradient(
                        colors: [
                          Color(0xffa695f7),
                          Color(0xff8866FF),
                        ],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                      ),
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              "Available Balance",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: b * 16,
                              ),
                            ),
                          ],
                        ),
                        sh(14),
                        Text(
                          "\u20B9 1500.00",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: b * 34,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        sh(18.5),
                        MaterialButton(
                          color: Colors.transparent,
                          elevation: 0,
                          padding: EdgeInsets.zero,
                          materialTapTargetSize:
                              MaterialTapTargetSize.shrinkWrap,
                          shape: RoundedRectangleBorder(
                            side: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(b * 295),
                          ),
                          onPressed: () {},
                          child: Text(
                            'Recharge',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: b * 10,
                              fontFamily: 'Museo700',
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
        ),
      ),
    );
  }
}
