import 'dart:async';

import 'package:alnawawisfortyhadiths/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';

import '../home_screen/HomeScreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3),()=>Navigator.pushReplacement(context, CupertinoPageRoute(builder: (context) => HomeScreen(),)));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MColors.primaryColor,
      body: Stack(
       alignment: Alignment.center,
        children: [
          SvgPicture.asset("assets/images/islamicPattern.svg"),
          Image.asset("assets/icons/ic_logoWithTitle.png",width: 60.w,)
        ],
      ),
    );
  }
}
