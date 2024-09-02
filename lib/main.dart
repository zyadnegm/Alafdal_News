import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'Core/utils/App_Router.dart';
import 'core/utils/ApiServer.dart';
import 'core/utils/theme.dart';
import 'features/home/data/repos/homeRepo_Imp.dart';
import 'features/home/presentaion/manager/NewsCubit/NewsCubit.dart';
import 'features/home/presentaion/manager/NewsCubit/News_Cubit2.dart';
import 'features/home/presentaion/manager/NewsCubit/News_Cubit3.dart';
import 'features/home/presentaion/manager/NewsCubit/SliderCubit.dart';
import 'features/home/presentaion/manager/Notifications/Firebase_Messeging.dart';
import 'firebase_options.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  Firebase_Messeging().initnotification();
  MobileAds.instance.initialize();
  // NotificationService().notificationRequest();

  final dio = Dio();
  final apiService = Api_Service(dio);
  final homeRepo = HomeRepo_Imp(apiService);

  final newsCubit = News_Cubit(homeRepo);
  final newsCubit2 = News_Cubit2(homeRepo);
  final newsCubit3 = News_Cubit3(homeRepo);
  final sliderCubit = SliderCubit(homeRepo);
  //
  // // تهيئة WorkManager
  // Workmanager().initialize(callbackDispatcher);
  // Workmanager().registerPeriodicTask(
  //   "1",
  //   "fetchNewsTask",
  //   frequency: Duration(minutes: 15),
  //
  // );

  runApp(MyApp(
    newsCubit: newsCubit,
    newsCubit2: newsCubit2,
    newsCubit3: newsCubit3,
    sliderCubit: sliderCubit,
  ));

  // تحميل البيانات بشكل غير متزامن
  await Future.wait([
    newsCubit.fetchNew(),
    newsCubit2.fetchNew2(),
    newsCubit3.fetchNew3(),
    sliderCubit.fetchNew_slider()
  ]);

  // Listen for connectivity changes and refresh data if necessary
  Connectivity().onConnectivityChanged.listen((var result) {
    if (result != ConnectivityResult.none) {
      newsCubit.fetchNew();
      newsCubit2.fetchNew2();
      newsCubit3.fetchNew3();
      sliderCubit.fetchNew_slider();
    }
  });
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
    required this.newsCubit,
    required this.newsCubit2,
    required this.newsCubit3,
    required this.sliderCubit,
  });

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
          BlocProvider.value(value: sliderCubit),
        ],
        child: MaterialApp.router(
          routerConfig: App_Router.router,
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: My_theme.LightTheme,

        ),
      ),
    );
  }
}
