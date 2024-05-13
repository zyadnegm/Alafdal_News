import 'package:alafdal_app/core/utils/Colors.dart';
import 'package:alafdal_app/features/home/presentaion/views/widget/HomeView_Body.dart';
import 'package:alafdal_app/features/home/presentaion/views/widget/tabBar_text.dart';
import 'package:alafdal_app/features/splash/widget/Logo_Splash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    List<Tab>tabs=[
      Tab(child: TabBar_Text(tabbat_text: "اليوم السابع",),),
      Tab(child: TabBar_Text(tabbat_text: "سكاس نيوز",),),
      Tab(child: TabBar_Text(tabbat_text: "سي ان ان",),)



    ];
    List<Widget>pages=[
      HomeView_Body(),
      HomeView_Body(),
      HomeView_Body(),
    ];
    return DefaultTabController(
      initialIndex: 1,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 110.h,
          actions: <Widget>[
            Container(
                child: Column(
              children: [
                SizedBox(
                  height: 8.h,
                ),
                Logo_Splash(
                  alafdal_fontsize: 20.sp,
                  alafdal_hight: 25.h,
                  news_fontsize: 14.sp,
                  alafdal_arfontsize: 20.sp,
                ),
                SizedBox(
                  height: 25.h,
                ),
              ],
            ))
          ],
          bottom:TabBar(tabs: tabs,indicatorColor: red_color,),

        ),
        body: TabBarView(children: pages,
        ),
      ),
    );
  }
}
