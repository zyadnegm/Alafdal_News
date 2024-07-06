import 'package:flutter/material.dart';

import 'DrawerTitles.dart';

class DrawertitlesListview extends StatelessWidget {
  const DrawertitlesListview({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: [
          DrawerTitles(
            tittle: "سياسة عربية",
            categories_id: 12,
          ),

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
    );
  }
}
