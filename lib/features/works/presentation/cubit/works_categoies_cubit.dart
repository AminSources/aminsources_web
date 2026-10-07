import 'package:bloc/bloc.dart';

class WorksCategoiesCubit extends Cubit<int> {
  WorksCategoiesCubit() : super(0);

  //? on change category
  void changeCategory(int index) {
    if (index != state) {
      emit(index);
    }
  }
}
