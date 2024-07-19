
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../../Core/utils/App_Router.dart';
import '../../../../../core/utils/Styles.dart';
import '../../../data/models/Categories_Model.dart';

class DrawerTitles extends StatelessWidget {
  const DrawerTitles({super.key, required this.tittle, required this.categories_id,});

  final String tittle;
  final int categories_id;



  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        GoRouter.of(context).push(App_Router.kCategoriesView,extra:Categories_Model(categories_tittle: tittle, categories_id: categories_id) );
      },
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 18.w),
        child: Column(
          children: [
            ListTile(
              title: Text(
                tittle,
                style: Styles.textStyle18,
                textAlign: TextAlign.right,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
