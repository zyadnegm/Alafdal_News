import 'package:alafdal_app/features/home/data/models/Categories_Model.dart';
import 'package:alafdal_app/features/home/presentaion/manager/NewsCubit/Categories.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/Colors.dart';
import '../../../../../core/utils/Styles.dart';
import '../../manager/NewsCubit/News_states.dart';
import 'NewsCard.dart';

class CategoriesBody extends StatelessWidget {
  const CategoriesBody({super.key, required this.categories_model});
  final Categories_Model categories_model;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding:  EdgeInsets.symmetric(horizontal: 10.w,vertical: 5.h),
          child: Align(alignment: Alignment.topRight,
              child: Text(categories_model.categories_tittle,style: Styles.textStyle30.copyWith(color: blue_color),)),
        ),
        Expanded(
            child: BlocBuilder<Categories_Cubit,News_State>(
                builder: (context, state) {
                  if (state is Categories_Success) {
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
                  else if (state is Categories_Faluire) {
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
