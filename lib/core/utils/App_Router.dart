
import 'package:go_router/go_router.dart';

import '../../features/Splash/Splash_View.dart';
import '../../features/home/data/models/Artical_Model.dart';
import '../../features/home/data/models/Categories_Model.dart';
import '../../features/home/presentaion/views/CategoriesView.dart';
import '../../features/home/presentaion/views/News_Details.dart';
import '../../features/home/presentaion/views/Noifivation_Details.dart';
import '../../features/home/presentaion/views/homeView.dart';

abstract class App_Router {
  static const ksplashPath = '/';
  static const khomeViewPath = '/home';
  static const kNewsDetailsPath = '/NewsDetail';
  static const kCategoriesView = '/categori';
  static const knotificationDetails = '/notification';





  static final router = GoRouter(routes: [
    GoRoute(
      path: khomeViewPath,
      builder: (context, state) =>
          HomeView(),
    ),
    GoRoute(
      path: ksplashPath,
      builder: (context, state) =>
          Splash_View(),
    ),


    GoRoute(
      path: kNewsDetailsPath,
      builder: (context, state) =>  News_Details(
        news: state.extra as ArticalModel
      ),
    ),
    GoRoute(
      path: kCategoriesView,
      builder: (context, state) =>
          CategoriesView(
            categories_model: state.extra as Categories_Model,

          ),
    ),
    GoRoute(
      path: knotificationDetails,
      builder: (context, state) =>
      NoifivationDetails(
        tittle: state.extra as String,
      )
    ),






  ]);
}
