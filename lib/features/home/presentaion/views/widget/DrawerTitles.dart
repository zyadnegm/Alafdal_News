import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/Styles.dart';

class DrawerTitles extends StatelessWidget {
  const DrawerTitles({super.key, required this.tittle});

  final String tittle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: Column(
        children: [
          ListTile(
            title: Text(
              tittle,
              style: Styles.textStyle18,
              textAlign: TextAlign.right,
            ),
          ),
          SizedBox(height: 10.h,),

        ],
      ),
    );
  }
}
