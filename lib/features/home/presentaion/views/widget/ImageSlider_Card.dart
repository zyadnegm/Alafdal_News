import 'package:alafdal_app/Core/utils/App_Router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/Colors.dart';
import '../../../../../core/utils/Styles.dart';

class Imageslider_Card extends StatelessWidget {
  const Imageslider_Card(
      {super.key, required this.image, required this.tittle, required this.index});

  final String image;
  final String tittle;
  final Object index;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        GoRouter.of(context).push(App_Router.kNewsDetailsPath,extra: index);
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Stack(
            alignment: Alignment.center, children: [
          Image.network(
            image,
            fit: BoxFit.fill,
            width: double.infinity,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              alignment: Alignment.center,
              height: 50.h,
              width: double.infinity,
              color: blue_color.withOpacity(0.5),
              child: Text(
                tittle,
                style: Styles.textStyle16.copyWith(color: Colors.white),
                textAlign: TextAlign.right,
              ),
            ),
          )
        ]),
      ),
    );
  }
}
