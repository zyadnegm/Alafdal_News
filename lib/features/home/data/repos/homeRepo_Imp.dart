
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../../../core/errors/Faliure.dart';
import '../../../../core/utils/ApiServer.dart';
import '../models/Artical_Model.dart';
import 'homeRepo.dart';

class HomeRepo_Imp implements HomeRepo {

  final Api_Service api_service;

  // WorkManager_Service workManager_Service=WorkManager_Service();


  HomeRepo_Imp(this.api_service);

  @override
  Future<Either<Faliuer, List<ArticalModel>>> fetchNews(
      {required int id}) async {
    try {
      List<dynamic>data = await api_service.get(id) as List<dynamic>;
      List<ArticalModel> news = data.map((item) => ArticalModel.fromJson(item))
          .toList();
      // for(int i=0;i<news.length;i++){
      //   workManager_Service.actionTask(news[i].title??"");
      // }
      return right(news);
    } catch (e) {
      if (e is DioError) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Faliuer, Map<String, dynamic>>> fetchNotificatioun_news({required int id, required String related_id}) async {
    try {
      List<dynamic> data = await api_service.get(id) as List<dynamic>;

      // Search for the news item that matches the relatedId
      for (var item in data) {
        if (item['id'] == related_id) {
          return right(item); // Return the first matching news item
        }
      }

      // If no matching news item is found, return a Failure
      return left(ServerFailure("News item with the specified ID not found"));
    } catch (e) {
      if (e is DioError) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }









}