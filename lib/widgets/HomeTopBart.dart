import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';

import '../utils/colors.dart';

class HomeTopBart extends StatelessWidget {
  const HomeTopBart({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 6.h),
        SvgPicture.asset("assets/icons/ic_darkLogo.svg"),
        SizedBox(
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 4.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(height: 5.h),
                Text(
                  "الأربعين النووية",
                  style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 1.h),
                Text("لحفظ وسماع الاحاديث النبوية",

                  style: TextStyle(color: MColors .primaryColor,fontSize: 14.sp,fontWeight: FontWeight.bold),),
              ],
            ),
          ),
        ),
      ],
    );
  }
}