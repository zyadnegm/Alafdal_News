import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/repos/homeRepo.dart';
import 'News_states.dart';

class Categories_Cubit extends Cubit<News_State>{
  Categories_Cubit(this.homeRepo):super(HomeNews_Init());
  final HomeRepo homeRepo;
  static Categories_Cubit get(context)=>BlocProvider.of(context);



  Future<void>fetchNew_Categories(int id)async {
    var result= await homeRepo.fetchNews(id: id);
    result.fold((faluire) {
      emit(Categories_Faluire(faluire.error_message));
      print(faluire.error_message);
    }, (news) {

      emit(Categories_Success(news));
    });
  }


}