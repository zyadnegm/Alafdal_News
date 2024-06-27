import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/AppLunch.dart';
import '../../../../../core/utils/Colors.dart';
import '../../../../../core/utils/Styles.dart';
import 'Social_Icon.dart';

class TopSection_Drawer extends StatelessWidget {
  const TopSection_Drawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: double.infinity,
      height: 200.h,
      color: blue_color,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Alafdal News",
            style: Styles.textStyle25.copyWith(color: Colors.white),
          ),
          SizedBox(
            height: 6.h,
          ),
          Text(
            "انضم الي مجموعاتنا الاخباريه ",
            style: Styles.textStyle16
                .copyWith(color: Colors.white, fontSize: 18.sp),
          ),
          SizedBox(
            height: 8.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                child: Social_Icon(
                  image: "assets/images/icons8-whatsapp-48.png",
                ),
                onTap: () {
                  Applunch.launchWhatsApp();
                },
              ),
              SizedBox(
                width: 16.w,
              ),
              InkWell(
                child: Social_Icon(image: "assets/images/icons8-telegram-logo-48.png"),
                onTap: () {
                  Applunch.launchTelegram();
                },
              )
            ],
          )
        ],
      ),
    );
  }
}
