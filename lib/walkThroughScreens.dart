import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lifechart/sizeConfig.dart';

import 'constants.dart';
import 'login.dart';

class WalkThroughScreen extends StatefulWidget {
  @override
  _WalkThroughScreenState createState() => _WalkThroughScreenState();
}

class _WalkThroughScreenState extends State<WalkThroughScreen> {
  final _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    var h = SizeConfig.screenHeight / 812;
    var b = SizeConfig.screenWidth / 375;

    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView(
              controller: _pageController,
              children: <Widget>[
                screen1(),
                screen2(),
                screen3(),
                screen4(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget screen1() {
    SizeConfig().init(context);
    var h = SizeConfig.screenHeight / 812;
    var b = SizeConfig.screenWidth / 375;

    return Container(
      width: SizeConfig.screenWidth,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            yellow,
            Color(0xffE5A40C),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          sh(82.41),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: b * 30),
            child: Text(
              "We had to\nDiscover in\nyou",
              style: TextStyle(
                color: Colors.white,
                fontSize: b * 40,
                fontWeight: FontWeight.bold,
                letterSpacing: 2,
              ),
            ),
          ),
          sh(36.61),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: b * 30),
            child: Text(
              "Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing ipsum is placeholder text commonly ipsum is placeholder text commonly used in the graphic.",
              style: TextStyle(
                color: Colors.white,
                fontSize: b * 16,
              ),
            ),
          ),
          sh(82.97),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Transform.translate(
                offset: Offset(b * 6.5, 0.0),
                child: Container(
                  height: h * 110,
                  width: b * 110,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  child: SvgPicture.asset(
                    'images/photo.svg',
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(-b * 6.5, 0.0),
                child: Image.asset(
                  'images/arms.png',
                  height: h * 110,
                  width: b * 110,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Transform.translate(
                offset: Offset(b * 6.5, 0.0),
                child: Image.asset('images/telescope.png',
                    height: h * 110, width: b * 110),
              ),
              Transform.translate(
                offset: Offset(-b * 6.5, 0.0),
                child: Container(
                  height: h * 110,
                  width: b * 110,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  child: SvgPicture.asset(
                    'images/earth.svg',
                  ),
                ),
              ),
            ],
          ),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  _pageController.jumpToPage(3);
                },
                child: Text(
                  "Skip",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: b * 16,
                  ),
                ),
              ),
            ],
          ),
          Spacer(),
          bottomColorRow(),
        ],
      ),
    );
  }

  Widget screen2() {
    var h = SizeConfig.screenHeight / 812;
    var b = SizeConfig.screenWidth / 375;

    return Container(
      width: SizeConfig.screenWidth,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFF85D5FB),
            Color(0xff61BFEF),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          sh(82.41),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: b * 30),
            child: Text(
              "We are who\ncare about\nyour feeling",
              style: TextStyle(
                color: Colors.white,
                fontSize: b * 40,
                letterSpacing: 2,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          sh(36.61),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: b * 30),
            child: Text(
              "Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing ipsum is placeholder text commonly ipsum is placeholder text commonly used in the graphic.",
              style: TextStyle(
                color: Colors.white,
                fontSize: b * 16,
              ),
            ),
          ),
          sh(82.97),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Transform.translate(
                offset: Offset(b * 6.5, 0.0),
                child: Image.asset(
                  'images/excercise.png',
                  height: h * 110,
                  width: b * 110,
                ),
              ),
              Transform.translate(
                offset: Offset(-b * 6.5, 0.0),
                child: Image.asset(
                  'images/yoga1.png',
                  height: h * 110,
                  width: b * 110,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Transform.translate(
                offset: Offset(b * 6.5, 0.0),
                child: Image.asset(
                  'images/yoga.png',
                  height: h * 110,
                  width: b * 110,
                ),
              ),
              Transform.translate(
                offset: Offset(-b * 6.5, 0.0),
                child: Image.asset(
                  'images/lotus.png',
                  height: h * 110,
                  width: b * 110,
                ),
              ),
            ],
          ),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  _pageController.jumpToPage(3);
                },
                child: Text(
                  "Skip",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: b * 16,
                  ),
                ),
              ),
            ],
          ),
          Spacer(),
          bottomColorRow(),
        ],
      ),
    );
  }

  Widget screen3() {
    var h = SizeConfig.screenHeight / 812;
    var b = SizeConfig.screenWidth / 375;

    return Container(
      width: SizeConfig.screenWidth,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xff89F1C9),
            Color(0xff53E4AB),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          sh(82.41),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: b * 30),
            child: Text(
              "We believe\nin giving\nnot taking",
              style: TextStyle(
                color: Colors.white,
                fontSize: b * 40,
                letterSpacing: 2,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          sh(36.61),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: b * 30),
            child: Text(
              "Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing ipsum is placeholder text commonly ipsum is placeholder text commonly used in the graphic.",
              style: TextStyle(
                color: Colors.white,
                fontSize: b * 16,
              ),
            ),
          ),
          sh(82.97),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Transform.translate(
                offset: Offset(b * 6.5, 0.0),
                child: Image.asset(
                  'images/shoes.png',
                  height: h * 110,
                  width: b * 110,
                ),
              ),
              Transform.translate(
                offset: Offset(-b * 6.5, 0.0),
                child: Container(
                  height: h * 110,
                  width: b * 110,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  child: SvgPicture.asset(
                    'images/youCan.svg',
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Transform.translate(
                offset: Offset(b * 6.5, 0.0),
                child: Image.asset('images/girlRun.png',
                    height: h * 110, width: b * 110),
              ),
              Transform.translate(
                offset: Offset(-b * 6.5, 0.0),
                child: Container(
                  height: h * 110,
                  width: b * 110,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  child: SvgPicture.asset(
                    'images/doit.svg',
                  ),
                ),
              ),
            ],
          ),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  _pageController.jumpToPage(3);
                },
                child: Text(
                  "Skip",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: b * 16,
                  ),
                ),
              ),
            ],
          ),
          Spacer(),
          bottomColorRow(),
        ],
      ),
    );
  }

  Widget screen4() {
    var h = SizeConfig.screenHeight / 812;
    var b = SizeConfig.screenWidth / 375;

    return Container(
      padding: EdgeInsets.symmetric(horizontal: b * 30),
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
          sh(95),
          Text(
            "Welcome",
            style: TextStyle(
                color: Colors.white, fontSize: b * 26, fontFamily: 'Museo700'),
          ),
          sh(156),
          Image.asset(
            'images/logo.png',
            width: b * 170,
            height: h * 216,
          ),
          Spacer(),
          Text(
            "Whoever said cash can’t purchase joy basically didn’t know where to go shopping",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: b * 14,
            ),
          ),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
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
                  "Start Now",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: b * 14,
                  ),
                ),
              ),
            ],
          ),
          sh(25),
          Transform.translate(
            offset: Offset(0, h * 10),
            child: GestureDetector(
              onVerticalDragStart: (DragStartDetails details) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Login(),
                  ),
                );
              },
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Login(),
                  ),
                );
              },
              child: SvgPicture.asset(
                'images/bottomUp.svg',
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget bottomColorRow() {
    var h = SizeConfig.screenHeight / 812;

    return Row(
      children: [
        Expanded(
          child: Container(
            height: h * 7.5,
            decoration: BoxDecoration(
              color: Color(0xffE5A40C),
            ),
          ),
        ),
        Expanded(
          child: Container(
            height: h * 7.5,
            decoration: BoxDecoration(
              color: Color(0xff62BFEF),
            ),
          ),
        ),
        Expanded(
          child: Container(
            height: h * 7.5,
            decoration: BoxDecoration(
              color: Color(0xff53E4AB),
            ),
          ),
        ),
      ],
    );
  }
}
