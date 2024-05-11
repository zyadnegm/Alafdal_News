import 'package:alafdal_app/features/home/presentaion/manager/NewsCubit/News_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/repos/homeRepo.dart';

class News_Cubit extends Cubit<News_State>{
  News_Cubit(this.homeRepo):super(HomeNews_Init());
  final HomeRepo homeRepo;

  Future<void>fetchNew({required String endpoint})async {
    emit(HomeNews_Loading());
    var result= await homeRepo.fetchNews(endpoint: endpoint);
    result.fold((faluire) {
      emit(HomeNews_Faluire(faluire.error_message));
    }, (news) {

      emit(HomeNews_Success(news));
    });
  }

}