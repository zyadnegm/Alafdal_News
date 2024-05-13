import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/Colors.dart';
import '../../../../../core/utils/Styles.dart';

class News_Card extends StatelessWidget {
  const News_Card({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.yellow,
      child: Card(
        color: white_color,
        elevation: 16,
        margin: EdgeInsets.symmetric(horizontal: 45,vertical: 15),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(4),
              child: ClipRRect(
                child: Image.asset(
                  "assets/images/unsplash_UEQvUtRs224.png",
                  width: double.infinity,
                  height: 200.h,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text("المقاومه :استهدفنا منصه “لويثان” الغازيه المقاومه :استهدفنا منصه “لويثان” الغازيه",style: Styles.textStyle16,),
            ),
            SizedBox(height: 20.h,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 13,vertical: 8),
              child: Align(alignment: Alignment.bottomRight,
                  child: Image.asset("assets/images/Vector.png")),
            )
          ],
        ),

      ),
    );
  }
}
