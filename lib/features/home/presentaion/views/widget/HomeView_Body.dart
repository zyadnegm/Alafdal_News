import 'package:alafdal_app/core/utils/Colors.dart';
import 'package:alafdal_app/core/utils/Styles.dart';
import 'package:alafdal_app/features/home/presentaion/manager/NewsCubit/NewsCubit.dart';
import 'package:alafdal_app/features/home/presentaion/manager/NewsCubit/News_states.dart';
import 'package:alafdal_app/features/home/presentaion/views/widget/NewsCard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView_Body1 extends StatelessWidget {
  const HomeView_Body1({super.key});


  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
          child: Align(alignment: Alignment.topRight,
              child: Text("سياسة دولية",style: Styles.textStyle30.copyWith(color: blue_color),)),
        ),
        Expanded(
          child: BlocBuilder<News_Cubit,News_State>(
            builder: (context, state) {
              if (state is HomeNews_Success) {
                return ListView.builder(itemCount: state.news.length,
                    itemBuilder:
                        (context, index) {
                      String imageurl = state.news[index].images ?? "";
                      return NewsCard(imageurl: imageurl,
                          tittle: state.news[index].title ?? "",
                      index: state.news[index],);
                    }

                );
              }
              else if (state is HomeNews_Faluire) {
                return Center(child: Text(state.error),);
              }
              else if (state is HomeNews_Init) {
                return Container(
                    child: Center(child: CircularProgressIndicator(),));
              }
              else {
                return Text("data");
              }
            }
          )
        )


      ],

    );
  }
}
