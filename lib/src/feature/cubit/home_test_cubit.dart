
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/src/feature/cubit/home_test_state.dart';

class HomeTestCubit extends Cubit<HomeTestState> {
  HomeTestCubit() : super(HomeTestInitial());
  int currentIndex=0;
  void changeIndex(value){
    currentIndex=value;
    emit(UpdateTest());

  }
}
