import 'package:alafdal_app/features/home/presentaion/views/homeView.dart';
import 'package:alafdal_app/features/splash/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class App_Router{
  static const khomeViewPath='/homeview';
  static const kBookDetailsPath='/BookDetail';



  static final router = GoRouter(
      routes: [
        GoRoute(
          path: '/',
          builder: (context, state) => const Splash_View(),
        ),
        GoRoute(
          path: khomeViewPath,
          builder: (context, state) => const HomeView(),
        ),

      ]
  );

}