
import 'package:dartz/dartz.dart';

import '../../../../core/errors/Faliure.dart';
import '../models/Artical_Model.dart';
abstract class HomeRepo{

   Future<Either<Faliuer,List<ArticalModel>>>fetchNews({required int id});
   Future<Either<Faliuer, ArticalModel>>fetchNotificatioun_news({required int related_id});


}