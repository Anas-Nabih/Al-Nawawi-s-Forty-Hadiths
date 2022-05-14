import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../models/Hadith.dart';
import '../../utils/colors.dart';

class HadithScreen extends StatelessWidget {
  final Hadith hadith;
  const HadithScreen({required this.hadith}) ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: Container(
        height: 65.h,width: double.infinity,
        padding: EdgeInsets.symmetric(vertical: 2.h, horizontal: 6.w),
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
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(hadith.hadithName),
              SizedBox(height: 1.h),
              Text(hadith.hadithContent),
              SizedBox(height: 1.h),
              Text(hadith.hadithExplanation),
              SizedBox(height: 1.h),
              Text(hadith.translateNarrator),
              SizedBox(height: 1.h),
              Text(hadith.hadithName),
            ],
          ),
        ),
      ),
    );
  }


 
}
