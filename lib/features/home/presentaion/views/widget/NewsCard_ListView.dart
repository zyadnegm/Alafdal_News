import 'package:alafdal_app/core/utils/App_Router.dart';
import 'package:alafdal_app/features/home/presentaion/manager/NewsCubit/NewsCubit.dart';
import 'package:alafdal_app/features/home/presentaion/manager/NewsCubit/News_states.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/Colors.dart';
import '../../../../../core/utils/Styles.dart';

class NewsCard_ListView extends StatelessWidget {
  const NewsCard_ListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<News_Cubit,News_State>(

      builder: (context, state) {
         if(state is HomeNews_Success){
          return ListView.builder(
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  GoRouter.of(context).push(App_Router.kNewsDetailsPath,extra: state.news[index]);
                },
                child: Card(
                  color: white_color,
                  elevation: 16,
                  margin: EdgeInsets.symmetric(horizontal: 45,vertical: 15),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(4),
                        child: ClipRRect(
                          child: Image.network(state.news[index].image??""),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 5),
                        child: Text(state.news[index].headline??"",style: Styles.textStyle16,textAlign: TextAlign.right,),
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
            },
            itemCount: state.news.length,
          );
        }
        else if(state is HomeNews_Faluire){
          return Center(child: Text(state.error),);
        }
        else {
          return Container(
              child: Center(child: CircularProgressIndicator(),));
        }
      },
    );
  }
}
