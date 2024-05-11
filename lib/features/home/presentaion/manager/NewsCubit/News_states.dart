
import 'package:alafdal_app/features/home/data/models/ArticalModel.dart';

abstract class News_State{}


class HomeNews_Init extends News_State{}
class HomeNews_Loading extends News_State{}
class HomeNews_Success extends News_State{
  final List<Results>news;
  HomeNews_Success(this.news);
}
class HomeNews_Faluire extends News_State{
  final String error;
  HomeNews_Faluire(this.error);
}