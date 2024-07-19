
import 'package:AlafdalNews/features/home/presentaion/views/widget/CategoriesBody.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/utils/ApiServer.dart';
import '../../../../core/utils/Styles.dart';
import '../../data/models/Categories_Model.dart';
import '../../data/repos/homeRepo_Imp.dart';
import '../manager/NewsCubit/Categories.dart';

class CategoriesView extends StatelessWidget {
  const CategoriesView({super.key, required this.categories_model});

  final Categories_Model categories_model;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => Categories_Cubit(HomeRepo_Imp(Api_Service(Dio())))
        ..fetchNew_Categories(categories_model.categories_id),
      child: Scaffold(
        appBar: AppBar(
          leading: InkWell(
            onTap: () {
              GoRouter.of(context).pop();
            },
              child: Icon(Icons.arrow_back,color: Colors.white,)),
          title: Text(
            categories_model.categories_tittle,
            style: Styles.textStyle21.copyWith(color: Colors.white),
          ),
        ),
        body: CategoriesBody(
          categories_model: categories_model,
        ),
      ),
    );
  }
}
