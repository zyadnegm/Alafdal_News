
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'DrawerBottom_Section.dart';
import 'DrawerTitles_ListView.dart';
import 'TopSection_Drawer.dart';

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
