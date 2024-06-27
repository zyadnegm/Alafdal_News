import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ImageSliders extends StatelessWidget {
  const ImageSliders({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> images = [
      Image.asset("assets/images/copy1.jpg"),
      Image.asset("assets/images/copy2.jpg"),
      Image.asset("assets/images/copy3.jpg"),
      Image.asset("assets/images/copy4.jpg"),
    ];
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: ImageSlideshow(children: images,
        initialPage: 0,
        // width: 100.w,
        indicatorColor: Colors.black,
        indicatorBackgroundColor: Colors.grey,
        indicatorBottomPadding: 10,
        isLoop: true,
        autoPlayInterval: 3000,
      ),
    );
  }
}
