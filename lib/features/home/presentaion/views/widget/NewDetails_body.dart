import 'package:AlafdalNews/core/utils/Colors.dart';
import 'package:AlafdalNews/core/utils/Styles.dart';
import 'package:AlafdalNews/features/home/data/models/Artical_Model.dart';
import 'package:AlafdalNews/features/home/presentaion/manager/admob/adManager.dart';
import 'package:AlafdalNews/features/home/presentaion/views/adMob_View.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:html/parser.dart' show parse;
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
              height: 18.h,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: AdmobView(id: AdManager.adHome2),
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                news.title ?? "",
                style: Styles.textStyle25
                    .copyWith(color: blue_color, fontWeight: FontWeight.w900),
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
            CachedNetworkImage(
              imageUrl: imagehost + imageurl,
              errorWidget: (context, url, error) => Text(
                "Connection Error",
                style: Styles.textStyle21,
              ),
            ),
            SizedBox(
              height: 4.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "مشاركة الخبر ",
                  style: Styles.textStyle18,
                ),
                InkWell(
                  onTap: () {
                    String descriptionText =
                        parse(news.description ?? "").documentElement!.text;
                    String contentToShare =
                        '${news.title}\n\n$descriptionText\n\nhttps://alafdalnews.com/$imageurl';
                    Share.share(contentToShare);
                  },
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        weight: 30,
                        Icons.share,
                        color: blue_color,
                        size: 33.sp,
                      ),
                    ),
                  ),
                ),
              ],
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
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: AdmobView(id: AdManager.adHome3),
            )
          ],
        ),
      ),
    );
  }
}