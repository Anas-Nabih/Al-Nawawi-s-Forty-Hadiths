import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';

import '../utils/colors.dart';


class HomeCard extends StatelessWidget {
  final String title;
  final String icon;
  final String circle;
  final Color color1;
  final Color color2;
  final Function()? onTapped;
  const HomeCard({required this.title,required this.icon,required this.onTapped,
    required this.circle,required this.color1,required this.color2});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapped ?? (){},
      child: Container(
        height: 15.h,
        padding: EdgeInsets.symmetric(vertical: 2.h,horizontal: 1.w),
        margin: EdgeInsets.only(bottom:2.5.h),
        decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(12),
            gradient: LinearGradient(
              colors:   [
               color1,
                color2,
              ],
            )
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset(icon,width: 14.w),
            Text(title,style: TextStyle(color: MColors.whiteColor,
                fontSize: 16.sp,fontWeight:FontWeight.bold ),),
            SvgPicture.asset(circle)
          ],
        ),
      ),
    );
  }
}
