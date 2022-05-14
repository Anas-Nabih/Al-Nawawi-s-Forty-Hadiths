import 'package:alnawawisfortyhadiths/db/Database.dart';
import 'package:alnawawisfortyhadiths/models/Hadith.dart';
import 'package:alnawawisfortyhadiths/screens/hadith_screen/hadithScreen.dart';
import 'package:alnawawisfortyhadiths/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';

import '../hadith_home.dart';


class AllTheAhadith extends StatefulWidget {
  const AllTheAhadith({Key? key}) : super(key: key);

  @override
  State<AllTheAhadith> createState() => _AllTheAhadithState();
}

class _AllTheAhadithState extends State<AllTheAhadith> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // Database.getAllAhadith().then((value) => ahadith = value);
    print("on init ${Hadith.ahadithList}");
  }
  
  List<Hadith> ahadith = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(

              child: Padding(
                padding: EdgeInsets.only(top: 4.h),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Spacer(),
                        SvgPicture.asset("assets/icons/ic_darkLogo.svg"),
                        Spacer(),
                        GestureDetector(onTap:()=>Navigator.pop(context),child: Icon(Icons.arrow_forward_ios)),
                        SizedBox(width: 5.w),
                      ],
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 4.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            SizedBox(height: 3.h),
                            Text("قراءة وحفظ الاحاديث النبوية",

                              style: TextStyle(color: MColors .primaryColor,fontSize: 14.sp,fontWeight: FontWeight.bold),),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )),
          Expanded(
            flex: 4,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.w,),
              child: GridView.builder(
                physics: ScrollPhysics(),
                shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 3 / 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  itemCount: Hadith.ahadithList.length,
                  itemBuilder: (context, index)=>GestureDetector(
                    onTap: ()=>Navigator.push(context, CupertinoPageRoute(builder: (context) => HomeHadith(hadith: Hadith.ahadithList[index]),)),
                      child: HadithCard(index: index,))),
            ),
          ),
        ],
      ),
    );
  }
}

class HadithCard extends StatelessWidget {
  final int index;
  const HadithCard({
   required this.index
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset("assets/images/readQuran.png",width: 42.w),
          SvgPicture.asset("assets/images/octagonShape.svg",width: 42.w,),
          Positioned(
            left: 12.w,
            child: SizedBox(
              width: 20.w,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(Hadith.ahadithList[index].id,overflow: TextOverflow.ellipsis,
                    textAlign:
                  TextAlign.center,style: TextStyle(
                    color: MColors.yellowColor,fontWeight: FontWeight.w500
                  ),),
                  SizedBox(height: 1.h),
                  Text(Hadith.ahadithList[index].hadithName,
                    overflow: TextOverflow.ellipsis,textAlign:
                    TextAlign.center,
                    style: TextStyle(
                      color: MColors.yellowColor,fontWeight: FontWeight.w700
                  ),),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
