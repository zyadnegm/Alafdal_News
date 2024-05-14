import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/utils/Colors.dart';
import '../../../core/utils/Styles.dart';

class Logo_Splash extends StatelessWidget {
  Logo_Splash({
    super.key, required this.hight, required this.width,
  });
  final double hight;
  final double width;



  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.yellow,
        height: hight.h,
        width: width.w,
        child: Image.asset("assets/images/alafdal-news-logo-.png",fit: BoxFit.fill,));
    ;
  }
}
