import 'package:alafdal_app/core/errors/Faliure.dart';
import 'package:alafdal_app/core/utils/ApiServer.dart';
import 'package:alafdal_app/features/home/data/models/Artical_Model.dart';
import 'package:alafdal_app/features/home/data/repos/homeRepo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../presentaion/manager/Notifications/Work_manager.dart';




class HomeRepo_Imp implements HomeRepo{

  final Api_Service api_service;
  WorkManager_Service workManager_Service=WorkManager_Service();



  HomeRepo_Imp(this.api_service);

  @override
   Future<Either<Faliuer, List<ArticalModel>>> fetchNews({required int id})async {
    try {
      List<dynamic>data= await api_service.get(id) as List<dynamic>;
      List<ArticalModel> news = data.map((item) => ArticalModel.fromJson(item)).toList();
      // for(int i=0;i<news.length;i++){
      //   workManager_Service.actionTask(news[i].title??"");
      // }
      return right(news);
    }catch (e){
      if(e is DioError){
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));

    }
  }


}