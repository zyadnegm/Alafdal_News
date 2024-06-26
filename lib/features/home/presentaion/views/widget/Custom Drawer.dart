import 'package:alafdal_app/core/utils/AppLunch.dart';
import 'package:alafdal_app/core/utils/Colors.dart';
import 'package:alafdal_app/features/home/presentaion/views/widget/DrawerTitles.dart';
import 'package:alafdal_app/features/home/presentaion/views/widget/Social_Icon.dart';
import 'package:alafdal_app/features/home/presentaion/views/widget/TopSection_Drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 300,
      child: Column(
        children: [
          TopSection_Drawer(),
          Expanded(
            child: ListView(
              children: [
                DrawerTitles(tittle: "سياسة", categories_id: 30),
                Divider(),
                DrawerTitles(
                  tittle: "سياسة عربية",
                  categories_id: 12,
                ),
                DrawerTitles(
                  tittle: "سياسة محلية",
                  categories_id: 2,
                ),
                DrawerTitles(
                  tittle: "سياسة دولية ",
                  categories_id: 1,
                ),
                Divider(),
                DrawerTitles(
                  tittle: "مقالات خاصة",
                  categories_id: 31,
                ),
                Divider(),
                DrawerTitles(
                  tittle: "خاص الافضل نيوز",
                  categories_id: 22,
                ),
                DrawerTitles(
                  tittle: "ترجمة صحف اجنبية",
                  categories_id: 28,
                ),
                DrawerTitles(
                  tittle: "مقالات مختارة",
                  categories_id: 24,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Divider(),
                ),
                DrawerTitles(
                  tittle: "أمن وقضاء",
                  categories_id: 13,
                ),
                DrawerTitles(
                  tittle: "اقتصاد",
                  categories_id: 14,
                ),
                DrawerTitles(
                  tittle: "رياضة",
                  categories_id: 8,
                ),
                DrawerTitles(
                  tittle: "صحة",
                  categories_id: 16,
                ),
                DrawerTitles(
                  tittle: "تكنولوجيا",
                  categories_id: 27,
                ),
                DrawerTitles(
                  tittle: "بيئة",
                  categories_id: 15,
                ),
                DrawerTitles(
                  tittle: "فن وثقافة",
                  categories_id: 18,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 7.h,
          ),
          Container(
            height: 70.h,
            decoration: BoxDecoration(
                color: blue_color,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20), topRight: Radius.circular(20))),
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                    onTap: () {
                      Applunch.launchFacebook();
                    },
                    child: Social_Icon(
                        image: "assets/images/icons8-facebook-logo-48.png")),
                InkWell(
                    onTap: () {
                      Applunch.launchinstgram();
                    },
                    child: Social_Icon(
                        image: "assets/images/icons8-instagram-logo-48.png")),
                InkWell(
                    onTap: () {
                      Applunch.launchX();
                    },
                    child: Social_Icon(image: "assets/images/X icon.png"))
              ],
            ),
          )
        ],
      ),
    );
  }
}
