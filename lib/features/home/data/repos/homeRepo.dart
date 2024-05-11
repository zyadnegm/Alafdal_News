
import 'package:alafdal_app/core/errors/Faliure.dart';
import 'package:alafdal_app/features/home/data/models/ArticalModel.dart';
import 'package:dartz/dartz.dart';
abstract class HomeRepo{

   Future<Either<Faliuer,List<Results>>>fetchNews({required String endpoint});

}