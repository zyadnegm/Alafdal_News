
import 'package:dartz/dartz.dart';

import '../../../../core/errors/Faliure.dart';
import '../models/Artical_Model.dart';
abstract class HomeRepo{

   Future<Either<Faliuer,List<ArticalModel>>>fetchNews({required int id});
   Future<Either<Faliuer,Map<String,dynamic>>>fetchNotificatioun_news({required int id,required String related_id});


}