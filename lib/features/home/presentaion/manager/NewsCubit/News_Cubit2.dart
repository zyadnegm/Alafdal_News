import 'package:alafdal_app/features/home/presentaion/manager/NewsCubit/News_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/repos/homeRepo.dart';

class News_Cubit2 extends Cubit<News_State>{
  News_Cubit2(this.homeRepo):super(HomeNews_Init());
  final HomeRepo homeRepo;
  static News_Cubit2 get(context)=>BlocProvider.of(context);



  Future<void>fetchNew2()async {
    var result= await homeRepo.fetchNews(id: 2);
    result.fold((faluire) {
      emit(HomeNews_Faluire(faluire.error_message));
      print(faluire.error_message);
    }, (news) {

      emit(HomeNews_Success2(news));
    });
  }

}