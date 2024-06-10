
import 'package:alafdal_app/core/errors/Faliure.dart';
import 'package:alafdal_app/features/home/data/models/Artical_Model.dart';
import 'package:dartz/dartz.dart';
abstract class HomeRepo{

   Future<Either<Faliuer,List<ArticalModel>>>fetchNews({required int id});

}