import 'package:alafdal_app/features/home/data/models/Artical_Model.dart';
import 'package:alafdal_app/features/home/data/models/Categories_Model.dart';
import 'package:alafdal_app/features/home/presentaion/views/CategoriesView.dart';
import 'package:alafdal_app/features/home/presentaion/views/News_Details.dart';
import 'package:alafdal_app/features/home/presentaion/views/homeView.dart';
import 'package:go_router/go_router.dart';

abstract class App_Router {
  static const khomeViewPath = '/';
  static const kNewsDetailsPath = '/NewsDetail';
  static const kCategoriesView = '/categori';



  static final router = GoRouter(routes: [
    GoRoute(
      path: khomeViewPath,
      builder: (context, state) =>
          HomeView(),
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




  ]);
}
