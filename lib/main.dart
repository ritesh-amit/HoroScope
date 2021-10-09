import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lifechart/chats.dart';
import 'package:lifechart/constants.dart';
import 'package:lifechart/home.dart';
import 'package:lifechart/sizeConfig.dart';
import 'package:lifechart/transactionHistory.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Life Chart',
      theme: ThemeData(
        fontFamily: 'Lato',
        primarySwatch: colorSwatch,
        primaryColor: Color(0xff8B6BFE),
        visualDensity: VisualDensity.standard,
        pageTransitionsTheme: PageTransitionsTheme(
          builders: {
            TargetPlatform.android: ZoomPageTransitionsBuilder(),
          },
        ),
      ),
      home: HomeMain(),
    );
  }
}

class HomeMain extends StatefulWidget {
  @override
  _HomeMainState createState() => _HomeMainState();
}

class _HomeMainState extends State<HomeMain> {
  int _index = 0;
  List<Widget> _screens = [
    Home(),
    Chats(),
    TransactionHistory(),
    Container(),
  ];
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    var h = SizeConfig.screenHeight / 812;
    var b = SizeConfig.screenWidth / 375;

    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: Container(
        margin: EdgeInsets.fromLTRB(b * 20, 0, b * 20, h * 12),
        height: h * 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(b * 25),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Color(0xffD4D4D4).withOpacity(0.94),
              blurRadius: b * 6,
              spreadRadius: 0,
              offset: Offset(0, 0),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(b * 25),
          child: BottomNavigationBar(
            elevation: 0,
            selectedFontSize: b * 0,
            unselectedFontSize: b * 0,
            iconSize: b * 22,
            selectedItemColor: Colors.transparent,
            unselectedItemColor: Colors.transparent,
            backgroundColor: Colors.transparent,
            items: [
              BottomNavigationBarItem(
                label: 'Home',
                icon: Container(
                  padding:
                      EdgeInsets.symmetric(vertical: h * 8, horizontal: h * 8),
                  width: b * 35,
                  height: h * 35,
                  decoration: _index == 0 ? decoration() : BoxDecoration(),
                  child: SvgPicture.asset(
                    'images/home.svg',
                    color: _index == 0 ? Colors.white : Colors.black,
                  ),
                ),
              ),
              BottomNavigationBarItem(
                label: 'Orders',
                icon: Container(
                  padding:
                      EdgeInsets.symmetric(vertical: h * 8, horizontal: h * 8),
                  width: b * 35,
                  height: h * 35,
                  decoration: _index == 1 ? decoration() : BoxDecoration(),
                  child: SvgPicture.asset(
                    'images/wallet.svg',
                    color: _index == 1 ? Colors.white : Colors.black,
                  ),
                ),
              ),
              BottomNavigationBarItem(
                label: 'Profile',
                icon: Container(
                  padding:
                      EdgeInsets.symmetric(vertical: h * 8, horizontal: h * 8),
                  width: b * 35,
                  height: h * 35,
                  decoration: _index == 2 ? decoration() : BoxDecoration(),
                  child: SvgPicture.asset(
                    'images/shopping-bag.svg',
                    color: _index == 2 ? Colors.white : Colors.black,
                  ),
                ),
              ),
              BottomNavigationBarItem(
                label: 'Profile',
                icon: Container(
                  padding:
                      EdgeInsets.symmetric(vertical: h * 8, horizontal: h * 8),
                  width: b * 35,
                  height: h * 35,
                  decoration: _index == 3 ? decoration() : BoxDecoration(),
                  child: SvgPicture.asset(
                    'images/user1.svg',
                    color: _index == 3 ? Colors.white : Colors.black,
                  ),
                ),
              ),
            ],
            onTap: (menuIndex) {
              setState(() {
                _index = menuIndex;
              });
            },
          ),
        ),
      ),
      body: _screens.elementAt(_index),
    );
  }

  BoxDecoration decoration() {
    return BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: Color(0xff8B6BFE),
          blurRadius: 6,
          spreadRadius: 0,
          offset: Offset(0, 3),
        ),
      ],
      gradient: LinearGradient(
        colors: [
          Color(0xffA895FD),
          Color(0xff8866FF),
        ],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      ),
      shape: BoxShape.circle,
    );
  }
}
