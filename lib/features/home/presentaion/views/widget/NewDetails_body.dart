import 'package:alafdal_app/core/utils/Colors.dart';
import 'package:alafdal_app/core/utils/Styles.dart';
import 'package:alafdal_app/features/home/data/models/Artical_Model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:share_plus/share_plus.dart';


class NewDetails_Body extends StatelessWidget {
  const NewDetails_Body({super.key, required this.news});

  final ArticalModel news;

  @override
  Widget build(BuildContext context) {
    var imageurl = news.images ?? "";
    String imagehost = "https://alafdalnews.com/";

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 17.w, vertical: 5.h),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 6.h,
            ),
            Align(
                alignment: Alignment.topLeft,
                child: InkWell(
                    onTap: () {
                      GoRouter.of(context).pop();
                    },
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: black_color,
                      size: 33.sp,
                    ))),
            SizedBox(
              height: 14.h,
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                news.title ?? "",
                style: Styles.textStyle25.copyWith(color: blue_color,fontWeight: FontWeight.w800),
                textAlign: TextAlign.right,
              ),
            ),
            SizedBox(
              height: 4.h,
            ),
            Row(
              children: [
                Text(
                  news.date ?? "",
                  style: Styles.textStyle16.copyWith(color: gray_color),
                ),
                Spacer(),
                Text(
                  news.time ?? "",
                  style: Styles.textStyle16.copyWith(color: gray_color),
                )
              ],
            ),
            SizedBox(
              height: 4.h,
            ),
            Image.network(imagehost + imageurl),
            SizedBox(
              height: 4.h,
            ),
            SizedBox(
              height: 8.h,
            ),
            Align(
              alignment: Alignment.center,
              child: Html(data: news.description ?? "", style: {
                "p": Style(
                  textAlign: TextAlign.right,
                  fontSize: FontSize(21.sp),
                  fontWeight: FontWeight.w600,
                )
              }),

            ),
            SizedBox(
              height: 12.h,
            ),
            InkWell(
              onTap: () {
                String contentToShare = '${news.title}\n\n${news.description}\n\nhttps://alafdalnews.com/$imageurl';
                Share.share(contentToShare);

              },
              child: Container(
                decoration: BoxDecoration(
                    color: blue_color, borderRadius: BorderRadius.circular(14)),
                width: 300.w,
                height: 70.h,
                child: Center(
                  child: Text(
                    "مشاركه الخبر",
                    style: Styles.textStyle25.copyWith(color: Colors.white),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
