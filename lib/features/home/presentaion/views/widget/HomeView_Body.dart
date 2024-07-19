
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/Colors.dart';
import '../../../../../core/utils/Styles.dart';
import '../../manager/NewsCubit/NewsCubit.dart';
import '../../manager/NewsCubit/News_states.dart';
import '../../manager/admob/adManager.dart';
import '../adMob_View.dart';
import 'NewsCard.dart';

class HomeView_Body1 extends StatelessWidget {
  const HomeView_Body1({super.key});


  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        // SizedBox(height: 10.h,),
        // ImageSliders(),
        Padding(
          padding:  EdgeInsets.symmetric(horizontal: 10.w,vertical: 5.h),
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

                  else {
                    return Center(child: CircularProgressIndicator(),);
                  }
                }
            )
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: AdmobView(id: AdManager.adHome,),
        )


      ],

    );
  }
}