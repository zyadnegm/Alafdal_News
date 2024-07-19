import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/repos/homeRepo.dart';
import 'News_states.dart';

class SliderCubit extends Cubit<News_State>{
  SliderCubit(this.homeRepo):super(HomeNews_Init());
  final HomeRepo homeRepo;
  static SliderCubit get(context)=>BlocProvider.of(context);



  Future<void>fetchNew_slider()async {
    var result= await homeRepo.fetchNews(id: 21);
    result.fold((faluire) {
      emit(Slider_Faluire(faluire.error_message));
      print(faluire.error_message);
    }, (news) {

      emit(Slider_Success(news));
    });
  }


}