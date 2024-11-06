import 'package:AlafdalNews/core/utils/ApiServer.dart';
import 'package:AlafdalNews/features/home/data/models/NotificationModel.dart';
import 'package:AlafdalNews/features/home/data/repos/homeRepo_Imp.dart';
import 'package:AlafdalNews/features/home/presentaion/manager/NewsCubit/Notification%20Cubit.dart';
import 'package:AlafdalNews/features/home/presentaion/views/widget/NoifivationDetails_Body.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class NoifivationDetails extends StatelessWidget {
  const NoifivationDetails({super.key, required this.notificationModel});

  final NotificationModel notificationModel;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => Notification_Cubit(HomeRepo_Imp(Api_Service(Dio())))
        ..fetchRelated_New(notificationModel.related_id),
      child: SafeArea(
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
        body: NoifivationDetails_Body(
          notificationModel: notificationModel,
        ),
      )),
    );
  }
}
