import 'package:alafdal_app/features/home/presentaion/manager/NewsCubit/NewsCubit.dart';
import 'package:alafdal_app/features/splash/widget/OnBoarding_Body.dart';
import 'package:flutter/material.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: OnBoarding_Body(),
    );
  }
}
