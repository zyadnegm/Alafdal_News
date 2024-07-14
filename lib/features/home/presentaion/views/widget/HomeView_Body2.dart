import 'package:alafdal_app/core/utils/Styles.dart';
import 'package:alafdal_app/features/home/presentaion/manager/NewsCubit/News_Cubit2.dart';
import 'package:alafdal_app/features/home/presentaion/views/adMob_View.dart';
import 'package:alafdal_app/features/home/presentaion/views/widget/NewsCard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/App_Router.dart';
import '../../../../../core/utils/Colors.dart';
import '../../manager/NewsCubit/News_states.dart';
import 'Image_sliders.dart';

class HomeView_Body2 extends StatelessWidget {
  const HomeView_Body2({super.key});


  @override
  Widget build(BuildContext context) {
    String imagehost = "https://alafdalnews.com/";

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        // SizedBox(height: 10.h,),
        // ImageSliders(),
        Padding(
          padding:  EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
          child: Align(
              alignment: Alignment.topRight,
              child: Text(
                "سياسة محلية",
                style: Styles.textStyle30.copyWith(color: blue_color),
              )),
        ),
        Expanded(child: BlocBuilder<News_Cubit2, News_State>(
          builder: (context, state) {
            if (state is HomeNews_Success2) {
              return ListView.builder(
                itemBuilder: (context, index) {
                  String imageurl = state.news[index].images ?? "";
                  return InkWell(
                    onTap: () {
                      GoRouter.of(context).push(App_Router.kNewsDetailsPath,
                          extra: state.news[index]);
                    },
                    child:NewsCard(imageurl: imageurl, tittle: state.news[index].title??"",
                    index: state.news[index],) ,
                  );
                },
                itemCount: state.news.length,
              );
            } else if (state is HomeNews_Faluire) {
              return Center(
                child: Text(state.error),
              );
            } else if (state is HomeNews_Init) {
              return Center(
                child: CircularProgressIndicator(),
              );
            } else {
              return Text("data");
            }
          },
        )),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: AdmobView(),
        )
      ],
    );
  }
}

