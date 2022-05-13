import 'package:flutter/material.dart';

import '../../utils/colors.dart';

class HomeItem{
  final String title;
  final String icon;
  final String circle;
  final Color color1;
  final Color color2;

   HomeItem({required this.title,required this.icon,
    required this.circle,required this.color1,required this.color2});

  static List<HomeItem> homeList = [
    HomeItem(title: "الاربعين النووية",
        icon: "assets/icons/ic_quranLogo.png",
        circle: "assets/icons/circlePattern1.svg",
        color1: MColors.darkPrimaryColor,
        color2: MColors.primaryColor),
    HomeItem(
        title: "الاستماع للاحاديث",
        icon: "assets/icons/ic_play.png",
        circle: "assets/icons/circlePattern1.svg",
        color1: MColors.darkPurpleColor,
        color2: MColors.yellowColor),
    HomeItem(
        title: "الاحاديث المحفوظة",
        icon: "assets/icons/ic_bookmark.png",
        circle: "assets/icons/circlePattern1.svg",
        color1: MColors.darkRedColor,
        color2: MColors.darkPurpleColor),
  ];
}