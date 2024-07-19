import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/repos/homeRepo.dart';
import 'News_states.dart';

class News_Cubit extends Cubit<News_State>{
  News_Cubit(this.homeRepo):super(HomeNews_Init());
  final HomeRepo homeRepo;
  static News_Cubit get(context)=>BlocProvider.of(context);


  Future<void>fetchNew()async {
    emit(HomeNews_Loading());
    var result= await homeRepo.fetchNews(id: 1);
    result.fold((faluire) {
      emit(HomeNews_Faluire(faluire.error_message));
      print(faluire.error_message);
    }, (news) {

      emit(HomeNews_Success(news));
    });
  }




}