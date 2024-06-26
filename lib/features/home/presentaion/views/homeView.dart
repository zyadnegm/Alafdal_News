import 'package:alafdal_app/core/utils/Colors.dart';
import 'package:alafdal_app/features/home/presentaion/views/widget/Custom%20Drawer.dart';
import 'package:alafdal_app/features/home/presentaion/views/widget/HomeView_Body.dart';
import 'package:alafdal_app/features/home/presentaion/views/widget/HomeView_Body2.dart';
import 'package:alafdal_app/features/home/presentaion/views/widget/HomeView_Body3.dart';
import 'package:alafdal_app/features/home/presentaion/views/widget/Logo_Icon.dart';
import 'package:alafdal_app/features/home/presentaion/views/widget/tabBar_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    List<Tab> tabs = [
      Tab(
        child: TabBar_Text(tabbar_text: "سياسة دولية"),
      ),
      Tab(
        child: TabBar_Text(
          tabbar_text: "سياسة محلية ",
        ),
      ),
      Tab(
        child: TabBar_Text(
          tabbar_text: "اقتصاد ",
        ),
      )
    ];
    List<Widget> pages = [
      HomeView_Body1(),
      HomeView_Body2(),
      HomeView_Body3(),
    ];
    return DefaultTabController(
      initialIndex: 2,
      length: 3,
      child: SafeArea(
        child: Scaffold(
          endDrawer: CustomDrawer(),
        
          appBar: AppBar(
            iconTheme: IconThemeData(color: Colors.white),
            toolbarHeight: 110.h,
            leading: Logo_Icon(),
            leadingWidth: 120.w,
            bottom: TabBar(
              tabs: tabs,
              indicatorColor: red_color,
              dividerColor: Colors.white,
              isScrollable: true,
              // padding: EdgeInsets.only(right: 60),
              labelPadding: EdgeInsets.only(right: 50),
        
            ),
          ),
          body: TabBarView(
            children: pages,
          ),
        ),
      ),
    );
  }
}


