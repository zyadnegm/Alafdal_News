import 'package:alafdal_app/core/utils/App_Router.dart';
import 'package:alafdal_app/core/utils/theme.dart';
import 'package:alafdal_app/features/home/presentaion/manager/NewsCubit/News_Cubit2.dart';
import 'package:alafdal_app/features/home/presentaion/manager/NewsCubit/News_Cubit3.dart';
import 'package:dio/dio.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'core/utils/ApiServer.dart';
import 'features/home/data/repos/homeRepo_Imp.dart';
import 'features/home/presentaion/manager/NewsCubit/NewsCubit.dart';
import 'firebase_options.dart';

  void main()  {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var w=MediaQuery.of(context).size.width;
    var h=MediaQuery.of(context).size.height;
    return ScreenUtilInit(
      designSize: Size(w,h),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => News_Cubit(HomeRepo_Imp(Api_Service(Dio())))..fetchNew()
            ,),
          BlocProvider(create: (context) => News_Cubit2(HomeRepo_Imp(Api_Service(Dio())))..fetchNew2(),),
          BlocProvider(create: (context) => News_Cubit3(HomeRepo_Imp(Api_Service(Dio())))..fetchNew3()
            ,),


        ],
        child: MaterialApp.router(
            routerConfig: App_Router.router,
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            theme: My_theme.LightTheme),
      ),
    );
  }
}
