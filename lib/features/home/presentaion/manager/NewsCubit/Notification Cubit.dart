import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/repos/homeRepo.dart';
import 'News_states.dart';

class Notification_Cubit extends Cubit<News_State>{
  Notification_Cubit(this.homeRepo):super(HomeNews_Init());
  final HomeRepo homeRepo;
  static Notification_Cubit get(context)=>BlocProvider.of(context);


  Future<void>fetchRelated_New(int related_id)async {
    emit(HomeNews_Loading());
    var result= await homeRepo.fetchNotificatioun_news(related_id: related_id);
    result.fold((faluire) {
      emit(Notification_Faluire(faluire.error_message));
      print(faluire.error_message);
    }, (news) {

      emit(Notification_Success(news));
    });
  }




}