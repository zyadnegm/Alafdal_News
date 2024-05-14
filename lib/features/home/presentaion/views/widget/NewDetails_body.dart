import 'package:alafdal_app/core/utils/Colors.dart';
import 'package:alafdal_app/core/utils/Styles.dart';
import 'package:alafdal_app/features/home/data/models/ArticalModel.dart';
import 'package:alafdal_app/features/splash/widget/OnBoarding_Button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

class NewDetails_Body extends StatelessWidget {
  const NewDetails_Body({super.key, required this.news});

  final Results news;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 17,vertical: 5),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 6,),
            Align(
              alignment: Alignment.topLeft,
                child: InkWell(
                  onTap:() {
                    GoRouter.of(context).pop();
                  },
                    child: Icon(Icons.arrow_back_ios,color: black_color,size: 33,))),
            SizedBox(height: 14,),
            Align(
              alignment: Alignment.center,
              child: Text(
                news.headline ?? "",
                style: Styles.textStyle21.copyWith(color: blue_color),
                textAlign: TextAlign.right,
              ),
            ),
            SizedBox(
              height: 4,
            ),
            Row(
              children: [
                Text(
                  news.date ?? "",
                  style: Styles.textStyle16.copyWith(color: gray_color),
                ),
                Spacer(),
                Text(
                  "اليوم السابع",
                  style: Styles.textStyle16.copyWith(color: gray_color),
                )
              ],
            ),
            SizedBox(
              height: 4,
            ),
            Image.network(news.image ?? ""),
            SizedBox(
              height: 4,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 6),
              child: Align(
                  alignment: Alignment.topRight,
                  child: Image.asset("assets/images/Vector.png")),
            ),
            SizedBox(
              height: 8,
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                news.content ?? "",
                style: Styles.textStyle21,
                textAlign: TextAlign.right,
              ),
            ),
            SizedBox(height: 12,),
            InkWell(onTap: () {

            },
                child: OnBoarding_Button(txt: "الذهاب الي المصدر"))
          ],
        ),
      ),
    );
  }
  // Future<void> launchURL(Uri url) async {
  //   if (await canLaunchUrl(url)) {
  //     await launchUrl(url, mode: LaunchMode.externalApplication); // Or other modes as needed
  //   } else {
  //     throw 'Could not launch $url';
  //   }
  // }

}
