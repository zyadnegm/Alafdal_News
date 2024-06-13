import 'package:alafdal_app/core/utils/Styles.dart';
import 'package:alafdal_app/features/home/presentaion/views/widget/NewsCard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/App_Router.dart';
import '../../../../../core/utils/Colors.dart';
import '../../manager/NewsCubit/News_Cubit3.dart';
import '../../manager/NewsCubit/News_states.dart';

class HomeView_Body3 extends StatelessWidget {
  const HomeView_Body3({super.key});

  @override
  @override
  Widget build(BuildContext context) {
    String imagehost = "https://alafdalnews.com/";

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          child: Align(
              alignment: Alignment.topRight,
              child: Text(
                "عاجل",
                style: Styles.textStyle30.copyWith(color: blue_color),
              )),
        ),
        Expanded(child: BlocBuilder<News_Cubit3, News_State>(
          builder: (context, state) {
            if (state is HomeNews_Success3) {
              return ListView.builder(
                itemBuilder: (context, index) {
                  String imageurl = state.news[index].images ?? "";
                  return InkWell(
                    onTap: () {
                      GoRouter.of(context).push(App_Router.kNewsDetailsPath,
                          extra: state.news[index]);
                    },
                    child: NewsCard(imageurl: imageurl, tittle: state.news[index].title??"",
                    index: state.news[index],),
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
        ))
      ],
    );
  }
}