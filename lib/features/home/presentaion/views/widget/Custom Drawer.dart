
import 'package:alafdal_app/core/utils/Colors.dart';
import 'package:alafdal_app/features/home/presentaion/views/widget/DrawerTitles.dart';
import 'package:alafdal_app/features/home/presentaion/views/widget/DrawerTitles_Menue.dart';
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
               DrawerTitles(tittle: "مقالات خاصة"),
                Divider(),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: DrawerTitles(tittle: "خاص الافضل نيوز"),
                ),
                DrawerTitles(tittle: "ترجمه صحف اجنبيه"),
                DrawerTitles(tittle: "مقالات مختارة"),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Divider(),
                ),
                DrawerTitles(tittle: "أمن وقضاء"),
                DrawerTitles(tittle: "اقتصاد"),
                DrawerTitles(tittle: "رياضه"),
                DrawerTitles(tittle: "صحه"),
                DrawerTitles(tittle: "تكنولوجيا"),
                DrawerTitles(tittle: "بيئه"),
                DrawerTitles(tittle: "فن وثقافه"),




              ],
            ),
          )



        ],
      ),
    );
  }
}

