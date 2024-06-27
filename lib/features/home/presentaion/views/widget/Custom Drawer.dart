
import 'package:alafdal_app/features/home/presentaion/views/widget/DrawerBottom_Section.dart';
import 'package:alafdal_app/features/home/presentaion/views/widget/DrawerTitles_ListView.dart';
import 'package:alafdal_app/features/home/presentaion/views/widget/TopSection_Drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 300.w,
      child: Column(
        children: [
          TopSection_Drawer(),
          DrawertitlesListview(),
          SizedBox(
            height: 7.h,
          ),
          DrawerbottomSection()
        ],
      ),
    );
  }
}
