import 'package:alafdal_app/core/errors/Faliure.dart';
import 'package:alafdal_app/core/utils/ApiServer.dart';
import 'package:alafdal_app/features/home/data/models/ArticalModel.dart';
import 'package:alafdal_app/features/home/data/repos/homeRepo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepo_Imp implements HomeRepo{

  final Api_Service api_service;
  HomeRepo_Imp(this.api_service);

  @override
   Future<Either<Faliuer, List<Results>>> fetchNews({required String endpoint})async {
    try {
      var data= await api_service.get(endpoint: endpoint);

      List<Results>news=[];
      for(var results in data["results"]){
        news.add(Results.fromJson(results));
      }
      return right(news);

    }catch (e){
      if(e is DioError){
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));

    }
  }

}