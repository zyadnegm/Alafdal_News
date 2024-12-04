

import '../../../data/models/Artical_Model.dart';

abstract class News_State{}


class HomeNews_Init extends News_State{}
class HomeNews_Loading extends News_State{}


class HomeNews_Success extends News_State{
  final List<ArticalModel>news;
  HomeNews_Success(this.news);
}
class HomeNews_Success2 extends News_State{
  final List<ArticalModel>news;
  HomeNews_Success2(this.news);
}

class HomeNews_Success3 extends News_State{
  final List<ArticalModel>news;
  HomeNews_Success3(this.news);
}
class Categories_Success extends News_State{
  final List<ArticalModel>news;
  Categories_Success(this.news);
}


class Categories_Faluire extends News_State{
  final String error;
  Categories_Faluire(this.error);
}

class HomeNews_Faluire extends News_State{
  final String error;
  HomeNews_Faluire(this.error);
}
class Slider_Success extends News_State{
  final List<ArticalModel>news;
  Slider_Success(this.news);
}


class Slider_Faluire extends News_State{
  final String error;
  Slider_Faluire(this.error);
}

class Notification_Success extends News_State{
  final   ArticalModel news;
  Notification_Success(this.news);
}
class Notification_Faluire extends News_State{
  final String error;
  Notification_Faluire(this.error);
}