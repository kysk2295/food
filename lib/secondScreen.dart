import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SecondScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _SecondScreenState();
  }

}

class _SecondScreenState extends State<SecondScreen>{

  var value = Get.arguments;
  double basic =0;
  double tan=0;
  double dan=0;
  double zi=0;

  @override
  void initState() {
    super.initState();
    _calKal();
    print(basic);

    setState(() {
      tan = (basic *0.5)/4;

      print(tan);

      dan = (basic *0.3)/4;

      zi=(basic*0.2)/9;

      print(zi);
    });

  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body:
      Container(
        margin: EdgeInsets.symmetric(horizontal: 30.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 50.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                    "섭취해야 하는 탄단지양(g)",
                    style:  TextStyle(
                        fontWeight: FontWeight.w500,
                        fontFamily: "SpoqaHanSansNeo",
                        fontStyle:  FontStyle.normal,
                        fontSize: 24.sp
                    ),
                    textAlign: TextAlign.left
                ),
                Text(
                    "변경하기",
                    style:  TextStyle(
                        fontWeight: FontWeight.w500,
                        fontFamily: "SpoqaHanSansNeo",
                        fontStyle:  FontStyle.normal,
                        fontSize: 12.sp
                    ),
                    textAlign: TextAlign.left
                ),

              ],
            ),
            SizedBox(height: 30.h,),

            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('${tan.round()}', textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 22.sp,
                        fontFamily: "Roboto",
                        fontWeight: FontWeight.w500,
                        letterSpacing: 1.25,
                      ),),
                    SizedBox(height: 5,),
                    Text(
                      "탄수화물",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xffc4c4c4),
                        fontSize: 14.sp,
                        fontFamily: "Roboto",
                        fontWeight: FontWeight.w500,
                        letterSpacing: 1.25,
                      ),
                    ),
                  ],
                ),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('${dan.round()}', textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 22.sp,
                        fontFamily: "Roboto",
                        fontWeight: FontWeight.w500,
                        letterSpacing: 1.25,
                      ),),
                    SizedBox(height: 5,),
                    Text(
                      "단백질",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xffc4c4c4),
                        fontSize: 14.sp,
                        fontFamily: "Roboto",
                        fontWeight: FontWeight.w500,
                        letterSpacing: 1.25,
                      ),
                    ),
                  ],

                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('${zi.round()}', textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 22.sp,
                        fontFamily: "Roboto",
                        fontWeight: FontWeight.w500,
                        letterSpacing: 1.25,
                      ),),
                    SizedBox(height: 5,),
                    Text(
                      "지방",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xffc4c4c4),
                        fontSize: 14.sp,
                        fontFamily: "Roboto",
                        fontWeight: FontWeight.w500,
                        letterSpacing: 1.25,
                      ),
                    ),
                  ],

                ),

              ],
            ),

            SizedBox(height: 30.h,),
            Text(
                "섭취 음식 종류",
                style:  TextStyle(
                    fontWeight: FontWeight.w500,
                    fontFamily: "SpoqaHanSansNeo",
                    fontStyle:  FontStyle.normal,
                    fontSize: 24.sp
                ),
                textAlign: TextAlign.left
            ),

          ],
        ),
      ),
    );
  }

  void _calKal() {
    if(value.isMale==0){
      basic = 66+ (13.7*value.weight)+(5*value.height) - (6.8*value.age);
      if(value.rep==0)
      {
        basic=basic*1.2;
        if(value.goal==0)
          basic=basic*1.2;
        else if(value.goal==1)
          basic=basic*0.8;
      }
      else if(value.rep==1){
        basic=basic*1.375;
        if(value.goal==0)
          basic=basic*1.2;
        else if(value.goal==1)
          basic=basic*0.8;
      }else if(value.rep==2){
        basic=basic*1.55;
        if(value.goal==0)
          basic=basic*1.2;
        else if(value.goal==1)
          basic=basic*0.8;
      }
      else if(value.rep==3){
        basic=basic*1.725;
        if(value.goal==0)
          basic=basic*1.2;
        else if(value.goal==1)
          basic=basic*0.8;
      }
      else if(value.rep==4){
        basic=basic*1.9;
        if(value.goal==0)
          basic=basic*1.2;
        else if(value.goal==1)
          basic=basic*0.8;
      }

    }
    else if(value.isMale ==1){
      basic = 655 + (9.6*value.weight)+(1.7*value.height) - (4.7*value.age);
      if(value.rep==0)
      {
        basic=basic*1.2;
        if(value.goal==0)
          basic=basic*1.2;
        else if(value.goal==1)
          basic=basic*0.8;
      }
      else if(value.rep==1){
        basic=basic*1.375;
        if(value.goal==0)
          basic=basic*1.2;
        else if(value.goal==1)
          basic=basic*0.8;
      }else if(value.rep==2){
        basic=basic*1.55;
        if(value.goal==0)
          basic=basic*1.2;
        else if(value.goal==1)
          basic=basic*0.8;
      }
      else if(value.rep==3){
        basic=basic*1.725;
        if(value.goal==0)
          basic=basic*1.2;
        else if(value.goal==1)
          basic=basic*0.8;
      }
      else if(value.rep==4){
        basic=basic*1.9;
        if(value.goal==0)
          basic=basic*1.2;
        else if(value.goal==1)
          basic=basic*0.8;
      }
    }
  }
}