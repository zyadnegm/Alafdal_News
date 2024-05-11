import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/utils/Colors.dart';
import '../../../core/utils/Styles.dart';

class Logo_Splash extends StatelessWidget {
  const Logo_Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      // crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          height: 73.h,
          child: Text(
            "ِAlafdal",
            style: TextStyle(
                fontSize: 60.sp, color: Colors.white, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Text("News",style: Styles.textStyle30.copyWith(color: red_color,fontSize: 35),),
            Text(
              "الافضل",
              style: TextStyle(
                  fontSize: 40.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),

          ],
        )
      ],
    );
  }
}
