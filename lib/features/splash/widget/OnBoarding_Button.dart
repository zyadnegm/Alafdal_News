import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../core/utils/App_Router.dart';
import '../../../core/utils/Colors.dart';
import '../../../core/utils/Styles.dart';

class OnBoarding_Button extends StatelessWidget {
  const OnBoarding_Button({super.key, required this.txt});
  final String txt;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        padding: MaterialStateProperty.all<EdgeInsets>(
            EdgeInsets.symmetric(
                horizontal: 90, vertical: 12)),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
            )

        ),



        backgroundColor: MaterialStateProperty.all(primarycolor),
      ),
      onPressed: () {
        GoRouter.of(context).pushReplacement(App_Router.khomeViewPath);
      },
      child: Text(
        txt,
        style: Styles.textStyle22.copyWith(color: white_color,fontWeight: FontWeight.w600),
      ),
    );
  }
}
