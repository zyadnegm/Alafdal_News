import 'dart:ui';
import 'package:alafdal_app/core/utils/Styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'OnBoarding_Button.dart';

class OnBoarding_Body extends StatelessWidget {
  const OnBoarding_Body({super.key});


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 93.h,
        ),
        Image.asset(
          "assets/images/cuate.png",
          width: 343.w,
          height: 352.h,
        ),
        SizedBox(
          height: 67.h,
        ),
        Align(
          alignment: Alignment.center,
          child: Text(
            "احصل على الاخبار العاجله اول باول",
            style: Styles.textStyle22
                .copyWith(color: Colors.black, fontWeight: FontWeight.w500),
          ),
        ),
        SizedBox(
          height: 48.h,
        ),
        Center(
          child:const OnBoarding_Button(txt: "التالي") ,
        )
      ],
    );
  }
}

