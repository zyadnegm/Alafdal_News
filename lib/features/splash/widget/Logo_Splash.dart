import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/utils/Colors.dart';
import '../../../core/utils/Styles.dart';

class Logo_Splash extends StatelessWidget {
  double alafdal_hight;
  double alafdal_fontsize;
  double news_fontsize;
  double alafdal_arfontsize;

  Logo_Splash(
      {super.key,
      required this.alafdal_hight,
      required this.alafdal_arfontsize,
      required this.alafdal_fontsize,
      required this.news_fontsize});

  @override
  Widget build(BuildContext context) {
    return Column(
      // crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          height: alafdal_hight,
          child: Text(
            "ِAlafdal",
            style: TextStyle(
                fontSize: alafdal_fontsize,
                color: Colors.white,
                fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "News",
              style: Styles.textStyle30
                  .copyWith(color: red_color, fontSize: news_fontsize),
            ),
            Text(
              "الافضل",
              style: TextStyle(
                  fontSize: alafdal_arfontsize,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ],
        )
      ],
    );
  }
}
