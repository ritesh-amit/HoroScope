import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lifechart/sizeConfig.dart';
import 'constants.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final TextEditingController firstname = TextEditingController();

  final TextEditingController lastname = TextEditingController();

  final TextEditingController email = TextEditingController();

  final TextEditingController phone = TextEditingController();

  final TextEditingController message = TextEditingController();
  bool isMale = true;
  bool isFemale = false;
  bool isOther = false;
  String gender = '';

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    var b = SizeConfig.screenWidth / 375;
    var h = SizeConfig.screenHeight / 812;
    return Scaffold(
      backgroundColor: ternary,
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.dark.copyWith(
          statusBarColor: Color(0xffa695f7).withOpacity(0.98),
        ),
        child: SafeArea(
          child: Container(
            child: Stack(
              alignment: Alignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: SizeConfig.screenWidth,
                      height: h * 154,
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
                          Spacer(),
                          Text(
                            "My Profile",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: b * 18,
                              fontFamily: 'Museo700',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Spacer(),
                          Icon(Icons.edit_outlined, color: Colors.white),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Container(
                        width: SizeConfig.screenWidth,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(b * 35),
                            topRight: Radius.circular(b * 35),
                          ),
                        ),
                        child: SingleChildScrollView(
                          physics: BouncingScrollPhysics(),
                          padding: EdgeInsets.symmetric(
                              horizontal: b * 38, vertical: h * 80),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Full Name",
                                style: TextStyle(
                                  fontSize: b * 17,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(
                                child: TextFormField(
                                  style: TextStyle(
                                    color: Colors.black.withOpacity(0.8),
                                    fontSize: b * 15,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  controller: firstname,
                                  keyboardType: TextInputType.name,
                                  decoration: inputDec("First Name"),
                                ),
                              ),
                              sh(20),
                              Text(
                                "Last Name",
                                style: TextStyle(
                                  fontSize: b * 17,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(
                                child: TextFormField(
                                  style: TextStyle(
                                    color: Colors.black.withOpacity(0.8),
                                    fontSize: b * 15,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  controller: lastname,
                                  keyboardType: TextInputType.name,
                                  decoration: inputDec("Last Name"),
                                ),
                              ),
                              sh(20),
                              Text(
                                "Email Address",
                                style: TextStyle(
                                  fontSize: b * 17,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(
                                child: TextFormField(
                                  style: TextStyle(
                                    color: Colors.black.withOpacity(0.8),
                                    fontSize: b * 15,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  controller: email,
                                  keyboardType: TextInputType.emailAddress,
                                  decoration: inputDec("Email Address"),
                                ),
                              ),
                              sh(20),
                              Text(
                                "Phone Number",
                                style: TextStyle(
                                  fontSize: b * 17,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(
                                child: TextFormField(
                                  style: TextStyle(
                                    color: Colors.black.withOpacity(0.8),
                                    fontSize: b * 15,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  controller: phone,
                                  keyboardType: TextInputType.number,
                                  decoration: inputDec("Phone Number"),
                                ),
                              ),
                              sh(20),
                              Text(
                                "Gender",
                                style: TextStyle(
                                  fontSize: b * 17,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              sh(17),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        isMale = true;
                                        isFemale = false;
                                        isOther = false;
                                        gender = 'male';
                                      });
                                    },
                                    child: Row(
                                      children: [
                                        Container(
                                          padding: EdgeInsets.all(1),
                                          height: h * 18,
                                          width: b * 18,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            border: Border.all(
                                                color: ternary, width: b * 1),
                                          ),
                                          child: CircleAvatar(
                                            radius: b * 7,
                                            backgroundColor:
                                                isMale ? ternary : Colors.white,
                                          ),
                                        ),
                                        SizedBox(width: b * 7),
                                        Text(
                                          'Male',
                                          style: TextStyle(
                                            fontSize: b * 15,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        isMale = false;
                                        isFemale = true;
                                        isOther = false;
                                        gender = 'female';
                                      });
                                    },
                                    child: Row(
                                      children: [
                                        Container(
                                          padding: EdgeInsets.all(1),
                                          height: h * 18,
                                          width: b * 18,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            border: Border.all(
                                              color: ternary,
                                              width: b * 1,
                                            ),
                                          ),
                                          child: CircleAvatar(
                                            radius: b * 7,
                                            backgroundColor: isFemale
                                                ? ternary
                                                : Colors.white,
                                          ),
                                        ),
                                        SizedBox(width: b * 7),
                                        Text(
                                          'Female',
                                          style: TextStyle(
                                            fontSize: b * 15,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        isMale = false;
                                        isFemale = false;
                                        isOther = true;
                                        gender = 'other';
                                      });
                                    },
                                    child: Row(
                                      children: [
                                        Container(
                                          padding: EdgeInsets.all(1),
                                          height: h * 18,
                                          width: b * 18,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            border: Border.all(
                                              color: ternary,
                                              width: b * 1,
                                            ),
                                          ),
                                          child: CircleAvatar(
                                            radius: b * 7,
                                            backgroundColor: isOther
                                                ? ternary
                                                : Colors.white,
                                          ),
                                        ),
                                        SizedBox(width: b * 7),
                                        Text(
                                          'Other',
                                          style: TextStyle(
                                            fontSize: b * 15,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              sh(36),
                              MaterialButton(
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
                                    'Save Changes',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: b * 16,
                                      fontFamily: 'Museo700',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ),
                              // sh(100),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Positioned(
                  top: h * 90,
                  child: SizedBox(
                    height: h * 124,
                    width: b * 125,
                    child: Stack(
                      children: [
                        Container(
                          height: h * 124,
                          width: b * 124,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border:
                                Border.all(color: Colors.white, width: b * 4),
                            gradient: LinearGradient(
                              colors: [
                                Color(0xffa695f7),
                                Color(0xff8866FF),
                              ],
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                            ),
                          ),
                          child: CachedNetworkImage(
                            imageUrl:
                                'https://images.unsplash.com/photo-1517423440428-a5a00ad493e8',
                            fit: BoxFit.cover,
                            imageBuilder: (context, imageProvider) => Container(
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
                        Positioned(
                          bottom: h * 0,
                          right: b * 5,
                          child: InkWell(
                            onTap: () {},
                            child: Container(
                              height: h * 38,
                              width: b * 38,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: ternary,
                                border: Border.all(
                                    color: Colors.white, width: b * 2),
                              ),
                              child: Icon(
                                Icons.camera_alt_outlined,
                                color: Colors.white,
                                size: b * 18,
                              ),
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
