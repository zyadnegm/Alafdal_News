import 'package:AlafdalNews/features/Splash/Widget/SplashView_Body.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../Core/utils/App_Router.dart';
import '../home/data/models/NotificationModel.dart';

class Splash_View extends StatefulWidget {
  const Splash_View({super.key});

  @override
  State<Splash_View> createState() => _Splash_ViewState();
}

class _Splash_ViewState extends State<Splash_View> {
  @override
  void initState() {
    // TODO: implement initState


  }
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SplashView_Body(),
    );
  }
}

