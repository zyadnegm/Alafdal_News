
import 'package:AlafdalNews/features/home/presentaion/views/widget/Custom%20Drawer.dart';
import 'package:AlafdalNews/features/home/presentaion/views/widget/HomeView_Body.dart';
import 'package:AlafdalNews/features/home/presentaion/views/widget/HomeView_Body2.dart';
import 'package:AlafdalNews/features/home/presentaion/views/widget/HomeView_Body3.dart';
import 'package:AlafdalNews/features/home/presentaion/views/widget/Logo_Icon.dart';
import 'package:AlafdalNews/features/home/presentaion/views/widget/tabBar_text.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../Core/utils/App_Router.dart';
import '../../../../core/utils/Colors.dart';
import '../../data/models/NotificationModel.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  void initState() {
    Future<void> setupInteractedMessage() async {
      RemoteMessage? initialMessage =
      await FirebaseMessaging.instance.getInitialMessage();

      if (initialMessage != null) {
        var model =NotificationModel(
            tittle: initialMessage.notification?.body ?? "",
            day: initialMessage.sentTime?.day ?? 0,
            hour: initialMessage.sentTime?.hour??0,
            minute: initialMessage.sentTime?.minute??0,
            year: initialMessage.sentTime?.year??0,
            mounth: initialMessage.sentTime?.month??0);
        GoRouter.of(context).push(App_Router.knotificationDetails,extra: model);

      }
    }
    setupInteractedMessage();
    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message){
      var model = NotificationModel(
          tittle: message.notification?.body??"",
          day: message.sentTime?.day??0,
          hour: message.sentTime?.hour??0,
          minute: message.sentTime?.minute??0,
          year: message.sentTime?.year??0,
          mounth: message.sentTime?.month??0);
      GoRouter.of(context).push(App_Router.knotificationDetails,extra: model);

    });
  }
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
