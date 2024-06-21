import 'package:alafdal_app/core/utils/Colors.dart';
import 'package:alafdal_app/features/home/presentaion/views/widget/Custom%20Drawer.dart';
import 'package:alafdal_app/features/home/presentaion/views/widget/HomeView_Body.dart';
import 'package:alafdal_app/features/home/presentaion/views/widget/HomeView_Body2.dart';
import 'package:alafdal_app/features/home/presentaion/views/widget/HomeView_Body3.dart';
import 'package:alafdal_app/features/home/presentaion/views/widget/tabBar_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    List<Tab> tabs = [
      Tab(
        child: TabBar_Text(tabbar_text: "سياسه دولية"),
      ),
      Tab(
        child: TabBar_Text(
          tabbar_text: "سياسه محلية ",
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
        drawer: CustomDrawer(),

        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.white),
          toolbarHeight: 110.h,
          actions: <Widget>[
            Container(
                child: Column(
              children: [
                Container(
                    alignment: Alignment.centerRight,
                    height: 110.h,
                    width: 200.w,
                    child: InkWell(
                      onTap: () {
                        _launchUrl();
                      },
                      child: Image.asset(
                        "assets/images/alafdal-news-logo-.png",
                        fit: BoxFit.fill,
                      ),
                    )),
              ],
            ))
          ],
          bottom: TabBar(
            tabs: tabs,
            indicatorColor: red_color,
            dividerColor: Colors.white,
            isScrollable: false,
            labelPadding: EdgeInsets.symmetric(horizontal: 6.w),

          ),
        ),
        body: TabBarView(
          children: pages,
        ),
      ),
    );
  }
}

final Uri _url = Uri.parse('https://alafdalnews.com');

Future<void> _launchUrl() async {
  if (!await launchUrl(_url)) {
    throw Exception('Could not launch $_url');
  }
}
