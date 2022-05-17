import 'package:ajh/model.dart';
import 'package:ajh/secondScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(428, 926),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'First Method',
          // You can use the library anywhere in the app even in theme
          theme: ThemeData(
            primarySwatch: Colors.blue,
            textTheme: TextTheme(bodyText2: TextStyle(fontSize: 30.sp)),
          ),
          home: child,
        );
      },
      child: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  dynamic _sliding = 0;
  dynamic _sliding2=0;
  dynamic _sliding3=0;
  final  _weightController = TextEditingController();
  final  _heightController = TextEditingController();
  final  _ageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
  return Scaffold(
    resizeToAvoidBottomInset: false,
    body: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // 성별 선택
        Container(
          margin: EdgeInsets.symmetric(horizontal: 30.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                  "성별 선택",
                  style:  TextStyle(
                      fontWeight: FontWeight.w500,
                      fontFamily: "SpoqaHanSansNeo",
                      fontStyle:  FontStyle.normal,
                      fontSize: 24.sp
                  ),
                  textAlign: TextAlign.left
              ),
              SizedBox(height: 15.h,),

              CupertinoSlidingSegmentedControl(children: {
                0: Text(
                    "남자",
                    style:  TextStyle(
                        fontWeight: FontWeight.w400,
                        fontFamily: "SpoqaHanSansNeo",
                        fontStyle:  FontStyle.normal,
                        fontSize: 14.sp
                    ),
                    textAlign: TextAlign.left
                ),
                1: Text(
                    "여자",
                    style:  TextStyle(
                        fontWeight: FontWeight.w400,
                        fontFamily: "SpoqaHanSansNeo",
                        fontStyle:  FontStyle.normal,
                        fontSize: 14.sp
                    ),
                    textAlign: TextAlign.left
                ),
              }, onValueChanged: (newValue){
                setState(() {
                  _sliding = newValue;
                });
              }, groupValue: _sliding,),
              SizedBox(height: 20.h,),

              Text(
                  "키 몸무게 입력",
                  style:  TextStyle(
                      fontWeight: FontWeight.w500,
                      fontFamily: "SpoqaHanSansNeo",
                      fontStyle:  FontStyle.normal,
                      fontSize: 24.sp
                  ),
                  textAlign: TextAlign.left
              ),
              SizedBox(height: 15.h,),
              Row(
                children: [
                  Container(
                    child: Text(
                      "키",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16.sp,
                        letterSpacing: 1.25,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 5.h,),
              Container(

                padding: EdgeInsets.fromLTRB(10.w,5.h,10.w,5.h),
                width: MediaQuery.of(context).size.width,
                height: 50.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Color(0xffecebeb),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                  ),
                  keyboardType: TextInputType.number,
                  controller: _heightController,
                  maxLines: 1,
                ),
              ),
              SizedBox(height: 10.h,),
              Row(
                children: [
                  Container(

                    child: Text(
                      "나이",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16.sp,
                        letterSpacing: 1.25,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 5.h,),
              Container(

                padding: EdgeInsets.fromLTRB(10.w,5.h,10.w,5.h),
                width: MediaQuery.of(context).size.width,
                height: 50.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Color(0xffecebeb),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                  ),
                  keyboardType: TextInputType.number,
                  controller: _ageController,
                  maxLines: 1,
                ),
              ),
              SizedBox(height: 10.h,),
              Row(
                children: [
                  Container(

                    child: Text(
                      "몸무게",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16.sp,
                        letterSpacing: 1.25,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 5.h,),
              Container(

                padding: EdgeInsets.fromLTRB(10.w,5.h,10.w,5.h),
                width: MediaQuery.of(context).size.width,
                height: 50.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Color(0xffecebeb),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                  ),
                  keyboardType: TextInputType.number,
                  controller: _weightController,
                  maxLines: 1,
                ),
              ),
              SizedBox(height: 20.h,),
              Text(
                  "주 운동 횟수",
                  style:  TextStyle(
                      fontWeight: FontWeight.w500,
                      fontFamily: "SpoqaHanSansNeo",
                      fontStyle:  FontStyle.normal,
                      fontSize: 24.sp
                  ),
                  textAlign: TextAlign.left
              ),
              SizedBox(height: 15.h,),
              CupertinoSlidingSegmentedControl(children: {
                0: Text(
                "거의 없음",
                style:  TextStyle(
              fontWeight: FontWeight.w400,
              fontFamily: "SpoqaHanSansNeo",
              fontStyle:  FontStyle.normal,
              fontSize: 14.sp
              ),
              textAlign: TextAlign.left
              ),
                1: Text(
              "1-3회",
              style:  TextStyle(
              fontWeight: FontWeight.w400,
              fontFamily: "SpoqaHanSansNeo",
              fontStyle:  FontStyle.normal,
              fontSize: 14.sp
              ),
              textAlign: TextAlign.left
              ),
                2: Text(
              "3-5회",
              style:  TextStyle(
              fontWeight: FontWeight.w400,
              fontFamily: "SpoqaHanSansNeo",
              fontStyle:  FontStyle.normal,
              fontSize: 14.sp
              ),
              textAlign: TextAlign.left
              ),
                3:Text(
              "6-7회",
              style:  TextStyle(
              fontWeight: FontWeight.w400,
              fontFamily: "SpoqaHanSansNeo",
              fontStyle:  FontStyle.normal,
              fontSize: 14.sp
              ),
              textAlign: TextAlign.left
              ),
                4:Text(
                    "8회이상",
                    style:  TextStyle(
                        fontWeight: FontWeight.w400,
                        fontFamily: "SpoqaHanSansNeo",
                        fontStyle:  FontStyle.normal,
                        fontSize: 14.sp
                    ),
                    textAlign: TextAlign.left
                ),
              }, onValueChanged: (newValue){
                setState(() {
                  _sliding2 = newValue;
                });
              }, groupValue: _sliding2,),
              SizedBox(height: 20.h,),

              Text(
                  "이용 목적",
                  style:  TextStyle(
                      fontWeight: FontWeight.w500,
                      fontFamily: "SpoqaHanSansNeo",
                      fontStyle:  FontStyle.normal,
                      fontSize: 24.sp
                  ),
                  textAlign: TextAlign.left
              ),
              SizedBox(height: 15.h,),
              CupertinoSlidingSegmentedControl(children: {
                0: Text(
                "증량",
                style:  TextStyle(
              fontWeight: FontWeight.w400,
              fontFamily: "SpoqaHanSansNeo",
              fontStyle:  FontStyle.normal,
              fontSize: 14.sp
              ),
              textAlign: TextAlign.left
              ),
                1: Text(
              "감량",
              style:  TextStyle(
              fontWeight: FontWeight.w400,
              fontFamily: "SpoqaHanSansNeo",
              fontStyle:  FontStyle.normal,
              fontSize: 14.sp
              ),
              textAlign: TextAlign.left
              ),

              }, onValueChanged: (newValue){
                setState(() {
                  _sliding3 = newValue;
                });
              }, groupValue: _sliding3,),
            ],
          ),
        ),

        Container(
          margin: EdgeInsets.symmetric(horizontal: 30.w),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: const Color(0xfff1561f),
              minimumSize: Size.fromHeight(50.h), // NEW
            ),
            onPressed: () {
              print(_heightController.text);

              if(_heightController.text.isEmpty)
                {
                  print('hi');
                  Get.snackbar('등록실패', '높이를 입력해주세요!');
                }

              else if(_ageController.text.isEmpty)
                Get.snackbar('등록실패', '나이를 입력해주세요!');
              else if(_weightController.text.isEmpty)
                Get.snackbar('등록실패', '몸무게를 입력해주세요!');
              else{
                Get.snackbar('등록완료', '등록이 완료되었습니다!');
                Model model = Model(_sliding, int.parse(_heightController.text) ,int.parse( _ageController.text), int.parse(_weightController.text), _sliding2, _sliding3);
                Get.to(SecondScreen(), arguments: model);
              }


            },
            child:  Text(
              '등록하기',
              style: TextStyle(fontSize: 18.sp),
            ),
          ),
        ),


      ],
    ),
  );
  }
}
