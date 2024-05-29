import 'package:alafdal_app/core/utils/App_Router.dart';
import 'package:alafdal_app/core/utils/theme.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/utils/ApiServer.dart';
import 'core/utils/Colors.dart';
import 'features/home/data/repos/homeRepo_Imp.dart';
import 'features/home/presentaion/manager/NewsCubit/NewsCubit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var w=MediaQuery.of(context).size.width;
    var h=MediaQuery.of(context).size.height;
    return ScreenUtilInit(
      designSize: Size(w, h),
      minTextAdapt: true,
      splitScreenMode: true,
      child: BlocProvider(
        create: (context) => News_Cubit(HomeRepo_Imp(Api_Service(Dio())))..fetchNew(endpoint: "cnnarabic"),
        child: MaterialApp.router(
            routerConfig: App_Router.router,
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            theme: My_theme.LightTheme),
      ),
    );
  }
}
