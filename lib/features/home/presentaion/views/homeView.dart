import 'package:alafdal_app/core/utils/Colors.dart';
import 'package:alafdal_app/features/home/presentaion/views/widget/HomeView_Body.dart';
import 'package:alafdal_app/features/home/presentaion/views/widget/HomeView_Body2.dart';
import 'package:alafdal_app/features/home/presentaion/views/widget/HomeView_Body3.dart';
import 'package:alafdal_app/features/home/presentaion/views/widget/tabBar_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    List<Tab> tabs = [
      Tab(
        child: TabBar_Text(tabbar_text: "اقتصاد"),
      ),
      Tab(
        child: TabBar_Text(
          tabbar_text: "سياسه دوليه ",
        ),
      ),
      Tab(
        child: TabBar_Text(
          tabbar_text: "عاجل ",
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
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 110.h,
          actions: <Widget>[
            Container(
                child: Column(
              children: [
                Container(
                    alignment: Alignment.centerRight,
                    height: 110.h,
                    width: 200.w,
                    child: Image.asset(
                      "assets/images/alafdal-news-logo-.png",
                      fit: BoxFit.fill,
                    )),
              ],
            ))
          ],
          bottom: TabBar(
            tabs: tabs,
            indicatorColor: red_color,
           isScrollable: false,

          ),
        ),
        body: TabBarView(
          children: pages,
        ),
      ),
    );
  }
}
