import 'package:alafdal_app/features/home/data/models/Artical_Model.dart';
import 'package:alafdal_app/features/home/presentaion/views/News_Details.dart';
import 'package:alafdal_app/features/home/presentaion/views/homeView.dart';
import 'package:alafdal_app/features/splash/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class App_Router {
  static const khomeViewPath = '/homeview';
  static const kNewsDetailsPath = '/NewsDetail';
  static const kOnBoardingPath = '/Onboard';


  static final router = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const Splash_View(),
    ),
    GoRoute(
      path: khomeViewPath,
      builder: (context, state) =>
          HomeView(),
    ),
    // GoRoute(
    //   path: kOnBoardingPath,
    //   builder: (context, state) => const OnBoarding(),
    // ),
    GoRoute(
      path: kNewsDetailsPath,
      builder: (context, state) =>  News_Details(
        news: state.extra as ArticalModel
      ),
    ),


  ]);
}
