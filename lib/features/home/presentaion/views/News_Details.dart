import 'package:AlafdalNews/core/utils/ApiServer.dart';
import 'package:AlafdalNews/features/home/data/repos/homeRepo_Imp.dart';
import 'package:AlafdalNews/features/home/presentaion/manager/NewsCubit/Notification%20Cubit.dart';
import 'package:AlafdalNews/features/home/presentaion/views/widget/NewDetails_body.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../data/models/Artical_Model.dart';

class News_Details extends StatelessWidget {
  const News_Details({super.key, required this.news});

  final ArticalModel news;

  @override
  Widget build(BuildContext context) {
    var imageurl = news.images ?? "";
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        leading: InkWell(
            onTap: () {
              GoRouter.of(context).pop();
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
                size: 33.sp,
              ),
            )),


      ),
      body: NewDetails_Body(
        news: news,
      ),
    ));
  }
}
