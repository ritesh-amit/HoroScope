import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lifechart/constants.dart';
import 'package:lifechart/sizeConfig.dart';

class ContactUs extends StatelessWidget {
  final TextEditingController name = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController phone = TextEditingController();
  final TextEditingController message = TextEditingController();
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    var b = SizeConfig.screenWidth / 375;
    var h = SizeConfig.screenHeight / 812;
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.dark.copyWith(
          statusBarColor: Color(0xffa695f7).withOpacity(0.98),
        ),
        child: SafeArea(
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
                      "Contact Us",
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
              sh(27),
              Expanded(
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  padding: EdgeInsets.symmetric(horizontal: b * 20),
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
                          controller: name,
                          keyboardType: TextInputType.name,
                          decoration: inputDec("Enter Name"),
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
                          decoration: inputDec("Enter Email Address"),
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
                          keyboardType: TextInputType.phone,
                          decoration: inputDec("Enter Your Number"),
                        ),
                      ),
                      sh(20),
                      Text(
                        "Your Message",
                        style: TextStyle(
                          fontSize: b * 17,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        child: TextFormField(
                          maxLines: 6,
                          minLines: 1,
                          style: TextStyle(
                            color: Colors.black.withOpacity(0.8),
                            fontSize: b * 15,
                            fontWeight: FontWeight.w500,
                          ),
                          controller: message,
                          keyboardType: TextInputType.multiline,
                          decoration: inputDec("Enter Message"),
                        ),
                      ),
                      sh(100),
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
                            'Submit',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: b * 16,
                              fontFamily: 'Museo700',
                              fontWeight: FontWeight.w400,
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
    );
  }
}
