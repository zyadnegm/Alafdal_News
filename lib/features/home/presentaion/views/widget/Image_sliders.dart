import 'package:AlafdalNews/core/utils/Styles.dart';
import 'package:AlafdalNews/features/home/presentaion/manager/NewsCubit/News_states.dart';
import 'package:AlafdalNews/features/home/presentaion/manager/NewsCubit/SliderCubit.dart';
import 'package:AlafdalNews/features/home/presentaion/views/widget/ImageSlider_Card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ImageSliders extends StatelessWidget {
  const ImageSliders({super.key});

  @override
  Widget build(BuildContext context) {
    String host = "https://alafdalnews.com/";

    return BlocBuilder<SliderCubit, News_State>(
      builder: (context, state) {
        if (state is Slider_Success) {
          List<String> image_url = [
            state.news[0].images ?? "",
            state.news[1].images ?? "",
            state.news[2].images ?? "",
            state.news[3].images ?? "",
            state.news[4].images ?? "",
            state.news[5].images ?? "",
          ];
          List<Widget> image_slider = [
            Imageslider_Card(
                image: host + image_url[0], tittle: state.news[0].title ?? "",
            index: state.news[0],),
            Imageslider_Card(
                image: host + image_url[1], tittle: state.news[1].title ?? "",index: state.news[1],),
            Imageslider_Card(
                image: host + image_url[2], tittle: state.news[2].title ?? "",index: state.news[2],),
            Imageslider_Card(
                image: host + image_url[4], tittle: state.news[3].title ?? "",index: state.news[3],),
            Imageslider_Card(
                image: host + image_url[5], tittle: state.news[4].title ?? "",index: state.news[4],),

          ];
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: ImageSlideshow(
              children: image_slider,
              initialPage: 0,
              width: double.infinity.w,
              indicatorColor: Colors.black,
              indicatorBackgroundColor: Colors.grey,
              indicatorBottomPadding: 1,
              isLoop: true,
              autoPlayInterval: 3000,
            ),
          );
        } else if (state is Slider_Faluire) {
          return Text(
            state.error,
            style: Styles.textStyle18.copyWith(color: Colors.white),
          );
        }
        return Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}
