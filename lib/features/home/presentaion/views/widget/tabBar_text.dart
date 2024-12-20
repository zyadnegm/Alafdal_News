import 'package:AlafdalNews/core/utils/Colors.dart';
import 'package:AlafdalNews/core/utils/Styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TabBar_Text extends StatelessWidget {
  final String tabbar_text;
  const TabBar_Text({super.key,required this.tabbar_text});

  @override
  Widget build(BuildContext context) {
    return Text(tabbar_text,style: Styles.textStyle21.copyWith(color: white_color,fontSize: 18.sp),);

  }
}
