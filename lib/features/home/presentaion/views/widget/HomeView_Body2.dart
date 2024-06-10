import 'package:alafdal_app/core/utils/Styles.dart';
import 'package:alafdal_app/features/home/presentaion/manager/NewsCubit/NewsCubit.dart';
import 'package:alafdal_app/features/home/presentaion/manager/NewsCubit/News_Cubit2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/App_Router.dart';
import '../../../../../core/utils/Colors.dart';
import '../../manager/NewsCubit/News_states.dart';

class HomeView_Body2 extends StatelessWidget {
  const HomeView_Body2({super.key});

  @override

  @override
  Widget build(BuildContext context) {
    String imagehost="https://alafdalnews.com/";


    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
          child: Align(alignment: Alignment.topRight,
              child: Text("عاجل",style: Styles.textStyle30.copyWith(color: blue_color),)),
        ),
        Expanded(
            child: BlocBuilder<News_Cubit2,News_State>(

              builder: (context, state) {

                if(state is HomeNews_Success2){
                  return ListView.builder(
                    itemBuilder: (context, index) {
                      String imageurl=state.news[index].images??"";
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
                                  child: Image.network(imagehost+imageurl),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 5),
                                child: Text(state.news[index].title??"",style: Styles.textStyle16,textAlign: TextAlign.right,),
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
                else if(state is HomeNews_Init){
                  return Center(child: CircularProgressIndicator(),);
                }else{return Text("data");}
              },
            )
        )


      ],

    );
  }
}
