import 'package:alnawawisfortyhadiths/screens/all_the_ahadith/AllTheAhadith.dart';
import 'package:alnawawisfortyhadiths/screens/home_screen/home_model.dart';
import 'package:alnawawisfortyhadiths/utils/colors.dart';
import 'package:alnawawisfortyhadiths/widgets/HomeCard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';

import '../../widgets/HomeTopBart.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: Container(
        height: 65.h,
        padding: EdgeInsets.symmetric(vertical: 2.h, horizontal: 10.w),
        decoration: BoxDecoration(
            color: MColors.whiteColor,
            borderRadius: BorderRadius.only(
              topRight: const Radius.circular(12),
              topLeft: const Radius.circular(12),
            ),
            boxShadow: const [
              BoxShadow(
                  color: MColors.darkOffWhiteColor,
                  blurRadius: 2,
                  offset: Offset(0, 2),
                  spreadRadius: 2)
            ]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(HomeItem.homeList.length,
                  (index) => HomeCard(
                      title: HomeItem.homeList[index].title,
                      icon: HomeItem.homeList[index].icon,
                      circle: HomeItem.homeList[index].circle,
                      color1: HomeItem.homeList[index].color1,
                      color2: HomeItem.homeList[index].color2,
                    onTapped: (){
                        Navigator.push(context, CupertinoPageRoute(builder: (context) => AllTheAhadith(),));
                    },
                  )),
        ),
      ),
      body: HomeTopBart(),
    );
  }
}


