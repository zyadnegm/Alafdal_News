import 'package:alafdal_app/core/utils/Colors.dart';
import 'package:alafdal_app/core/utils/Styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../core/utils/App_Router.dart';
import 'Logo_Splash.dart';

class SplashView_Body extends StatelessWidget {
  const SplashView_Body({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 4), () {
      GoRouter.of(context).pushReplacement(App_Router.khomeViewPath);
    });
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Logo_Splash(
            hight: 350,
            width: 350,

          ),
          SizedBox(
            height: 40.h,
          ),
          Text(
            "تابع جميع الاخبار من مختلف\n    المجالات فى مكان واحد",
            style: Styles.textStyle25.copyWith(color: white_color),
          )
        ],
      ),
    );
  }
}
