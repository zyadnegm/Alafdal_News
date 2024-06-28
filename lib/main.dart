import 'package:alafdal_app/core/utils/App_Router.dart';
import 'package:alafdal_app/core/utils/theme.dart';
import 'package:alafdal_app/features/home/presentaion/manager/NewsCubit/Categories.dart';
import 'package:alafdal_app/features/home/presentaion/manager/NewsCubit/News_Cubit2.dart';
import 'package:alafdal_app/features/home/presentaion/manager/NewsCubit/News_Cubit3.dart';
import 'package:alafdal_app/features/home/presentaion/manager/NewsCubit/SliderCubit.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:workmanager/workmanager.dart';
import 'core/utils/ApiServer.dart';
import 'features/home/data/repos/homeRepo_Imp.dart';
import 'features/home/presentaion/manager/NewsCubit/NewsCubit.dart';
import 'features/home/presentaion/manager/Notifications/Work_manager.dart';

void main() async {

   WidgetsFlutterBinding.ensureInitialized();
     // WorkManager_Service().init();
     // WorkManager_Service().registerMyTask();
  final dio = Dio();
  final apiService = Api_Service(dio);
  final homeRepo = HomeRepo_Imp(apiService);

  final newsCubit = News_Cubit(homeRepo);
  final newsCubit2 = News_Cubit2(homeRepo);
  final newsCubit3 = News_Cubit3(homeRepo);
   final slidercubit = SliderCubit(homeRepo);


   await Future.wait([
    newsCubit.fetchNew(),
    newsCubit2.fetchNew2(),
    newsCubit3.fetchNew3(),
    slidercubit.fetchNew_slider()

  ]);

  runApp(MyApp(
    newsCubit: newsCubit,
    newsCubit2: newsCubit2,
    newsCubit3: newsCubit3,
    sliderCubit: slidercubit,

  ));
}

class MyApp extends StatelessWidget {
  const MyApp(
      {super.key,
      required this.newsCubit,
      required this.newsCubit2,
      required this.newsCubit3, required this.sliderCubit, });

  final News_Cubit newsCubit;
  final News_Cubit2 newsCubit2;
  final News_Cubit3 newsCubit3;
  final SliderCubit sliderCubit;

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return ScreenUtilInit(
      designSize: Size(w, h),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MultiBlocProvider(
        providers: [
          BlocProvider.value(value: newsCubit),
          BlocProvider.value(value: newsCubit2),
          BlocProvider.value(value: newsCubit3),
          BlocProvider.value(value: sliderCubit)
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
