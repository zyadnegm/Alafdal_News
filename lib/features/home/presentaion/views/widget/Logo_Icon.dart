import 'package:alafdal_app/core/utils/AppLunch.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class Logo_Icon extends StatelessWidget {
   Logo_Icon({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
        alignment: Alignment.centerRight,
        height: 110.h,
        width: 200.w,
        child: InkWell(
          onTap: () {
            Applunch.launchWeb();
          },
          child: Image.asset(
            "assets/images/alafdal-news-logo-.png",
            fit: BoxFit.fill,
          ),
        ));
  }
}
