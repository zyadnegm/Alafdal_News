import 'package:AlafdalNews/core/utils/Styles.dart';
import 'package:AlafdalNews/features/home/presentaion/manager/admob/adManager.dart';
import 'package:AlafdalNews/features/home/presentaion/views/adMob_View.dart';
import 'package:AlafdalNews/features/home/presentaion/views/widget/Image_sliders.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/utils/Colors.dart';
import '../../manager/NewsCubit/News_Cubit3.dart';
import '../../manager/NewsCubit/News_states.dart';

class HomeView_Body3 extends StatelessWidget {
  HomeView_Body3({super.key});

  @override
  Widget build(BuildContext context) {
    // String imagehost = "https://alafdalnews.com/";

    return Stack(children: [
      CustomScrollView(
        slivers: <Widget>[
          SliverToBoxAdapter(
            child: SizedBox(height: 10.h),
          ),
          SliverToBoxAdapter(
            child: ImageSliders(),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
              child: Align(
                alignment: Alignment.topRight,
                child: Text(
                  "عاجل",
                  style: Styles.textStyle30.copyWith(color: blue_color),
                ),
              ),
            ),
          ),
          BlocBuilder<News_Cubit3, News_State>(
            builder: (context, state) {
              if (state is HomeNews_Success3) {
                return SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                      // String imageurl = state.news[index].images ?? "";
                      return Card(
                        color: white_color,
                        elevation: 16,
                        margin: EdgeInsets.symmetric(
                            horizontal: 45.w, vertical: 7.h),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child: Padding(
                                padding: const EdgeInsets.all(10),
                                child: Text(
                                  state.news[index].title ?? "",
                                  style: Styles.textStyle16.copyWith(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18.sp,
                                  ),
                                  textAlign: TextAlign.right,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 3.h,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8,vertical: 4),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    state.news[index].date ?? "",
                                    style: Styles.textStyle16
                                        .copyWith(color: gray_color),
                                  ),
                                  Text(
                                    state.news[index].time ?? "",
                                    style: Styles.textStyle16
                                        .copyWith(color: gray_color),
                                  )
                                ],
                              ),
                            )
                            // SizedBox(height: 30.h),
                          ],
                        ),
                      );
                    },
                    childCount: state.news.length,
                  ),
                );
              } else if (state is HomeNews_Faluire) {
                return SliverToBoxAdapter(
                  child: Center(
                    child: Text(state.error),
                  ),
                );
              } else if (state is HomeNews_Init) {
                return SliverToBoxAdapter(
                  child: Center(
                    child: CircularProgressIndicator(),
                  ),
                );
              } else {
                return SliverToBoxAdapter(
                  child: Center(
                    child: Text("data"),
                  ),
                );
              }
            },
          ),
        ],
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: AdmobView(
          id: AdManager.adHome,
        ),
      ),
    ]);
  }
}
