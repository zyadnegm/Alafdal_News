import 'package:alafdal_app/core/utils/App_Router.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/Colors.dart';
import '../../../../../core/utils/Styles.dart';

class NewsCard extends StatelessWidget {
  const NewsCard({super.key, required this.imageurl, required this.tittle, required this.index});
 final String imagehost="https://alafdalnews.com/";
 final String imageurl;
 final String tittle;
 final Object index;


  @override
  Widget build(BuildContext context) {

    return InkWell(
      onTap: () {
        GoRouter.of(context).push(App_Router.kNewsDetailsPath,extra: index);

      },
      child: Card(
        color: white_color,
        elevation: 16,
        margin:
        EdgeInsets.symmetric(horizontal: 45, vertical: 15),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(4),
              child: ClipRRect(
                child: Image.network(imagehost + imageurl),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                  tittle,
                  style: Styles.textStyle16
                      .copyWith(fontWeight: FontWeight.bold,fontSize: 18),
                  textAlign: TextAlign.right,

                ),
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
          ],
        ),
      ),
    );
  }
}
