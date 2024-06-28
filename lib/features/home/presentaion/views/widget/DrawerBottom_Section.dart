import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/AppLunch.dart';
import '../../../../../core/utils/Colors.dart';
import 'Social_Icon.dart';

class DrawerbottomSection extends StatelessWidget {
  const DrawerbottomSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70.h,
      decoration: BoxDecoration(
          color: blue_color,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20))),
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
              onTap: () {
                Applunch.launchFacebook();
              },
              child: Social_Icon(
                  image: "assets/images/facebook_afdal.png")),
          InkWell(
              onTap: () {
                Applunch.launchinstgram();
              },
              child: Social_Icon(
                  image: "assets/images/instagram_afdal.png")),
          InkWell(
              onTap: () {
                Applunch.launchX();
              },
              child: Social_Icon(image: "assets/images/X_afdal.png"))
        ],
      ),
    );
  }
}
