import 'package:alafdal_app/core/utils/Colors.dart';
import 'package:alafdal_app/features/splash/widget/SplashView_Body.dart';
import 'package:flutter/material.dart';

class Splash_View extends StatelessWidget {
  const Splash_View({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primarycolor,
        body: const SplashView_Body());
  }
}
