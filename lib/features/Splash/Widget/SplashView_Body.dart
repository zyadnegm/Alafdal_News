import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../Core/utils/App_Router.dart';

class SplashView_Body extends StatelessWidget {
  const SplashView_Body({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(
      Duration(seconds: 3),
      () {
        GoRouter.of(context).pushReplacement(App_Router.khomeViewPath);
      },
    );

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Container(
              child: Image.asset(
            "assets/images/splash_screen.jpg",
            fit: BoxFit.fill,
            height: double.infinity.h,
          )),
        ),
      ],
    );
  }
}
