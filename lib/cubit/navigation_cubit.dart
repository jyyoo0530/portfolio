import 'package:flutter_bloc/flutter_bloc.dart';

class NavigationCubit extends Cubit<int>{
  NavigationCubit(): super(0);

  // 선택된 인덱스를 업데이트하는 함수
  void updateIndex(int newIndex){
    emit(newIndex);
  }
}