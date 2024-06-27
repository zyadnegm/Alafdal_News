
import 'package:alafdal_app/core/utils/ApiServer.dart';
import 'package:dio/dio.dart';
import 'package:workmanager/workmanager.dart';

import '../../../data/models/Artical_Model.dart';
import 'Notifications.dart';



class WorkManager_Service {
  Api_Service api_service=Api_Service(Dio());
  NotificationService notificationService=NotificationService();
  Future<List<String>>getnews_tittle() async {
    List<dynamic>data= await api_service.get(2) as List<dynamic>;
    List<ArticalModel> news = data.map((item) => ArticalModel.fromJson(item)).toList();
    List<String>news_tittle=[];
    for(int i=0;i<news.length;i++){
      news_tittle.add(news[i].title??"");
    }
    return news_tittle;

  }


  void registerMyTask() async {
    //register my task
    await Workmanager().registerPeriodicTask(
      'id1',
      'show simple notification',
      frequency: const Duration(minutes: 15),
    );
  }

  //init work manager service
  Future<void> init() async {
    await Workmanager().initialize(actionTask, isInDebugMode: true);
    registerMyTask();
  }

  void cancelTask(String id) {
    Workmanager().cancelAll();
  }
  @pragma('vm-entry-point')
  void actionTask() {
    //show notification
    Workmanager().executeTask((taskName, inputData) async {
      WorkManager_Service service = WorkManager_Service();
      List<String> titles = await service.getnews_tittle();
      NotificationService notificationService = NotificationService();
      for (String title in titles) {
        notificationService.showNotification("alafdal", title);
      }
      return Future.value(true);
    }
    );
  }


}

