
import 'package:alafdal_app/features/home/presentaion/views/widget/DrawerTitles.dart';
import 'package:alafdal_app/features/home/presentaion/views/widget/TopSection_Drawer.dart';
import 'package:flutter/material.dart';


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
                DrawerTitles(tittle: "سياسة",categories_id: 30),
                Divider(),
                DrawerTitles(tittle: "سياسة عربية",categories_id: 12,),
                DrawerTitles(tittle: "سياسة محلية",categories_id: 2,),
                DrawerTitles(tittle: "سياسة دولية ",categories_id: 1,),
               Divider(),
               DrawerTitles(tittle: "مقالات خاصة",categories_id: 31,),
                Divider(),
                DrawerTitles(tittle: "خاص الافضل نيوز",categories_id: 22,),
                DrawerTitles(tittle: "ترجمه صحف اجنبيه",categories_id: 28,),
                DrawerTitles(tittle: "مقالات مختارة",categories_id: 24,),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Divider(),
                ),
                DrawerTitles(tittle: "أمن وقضاء",categories_id: 13,),
                DrawerTitles(tittle: "اقتصاد",categories_id: 14,),
                DrawerTitles(tittle: "رياضه",categories_id: 8,),
                DrawerTitles(tittle: "صحه",categories_id: 16,),
                DrawerTitles(tittle: "تكنولوجيا",categories_id: 27,),
                DrawerTitles(tittle: "بيئه",categories_id: 15,),
                DrawerTitles(tittle: "فن وثقافه",categories_id: 18,),




              ],
            ),
          )



        ],
      ),
    );
  }
}

