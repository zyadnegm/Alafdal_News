import 'package:AlafdalNews/core/utils/AppLunch.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class Logo_Icon extends StatelessWidget {
   Logo_Icon({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
        alignment: Alignment.centerRight,
        height: 100.h,
        width: 160.w,
        child: InkWell(
          onTap: () {
            Applunch.launchWeb();
          },
          child: Image.asset(
            "assets/images/logo-afdal-news-no-padding.png",
            fit: BoxFit.fill,
          ),
        ));
  }
}
