import 'package:aminsources_web/features/works/presentation/cubit/work_category.dart';
import 'package:bloc/bloc.dart';

class WorksCategoriesCubit extends Cubit<WorkCategory> {
  WorksCategoriesCubit() : super(WorkCategory.all);

  //? on change category
  void changeCategory(WorkCategory category) {
    if (category != state) {
      emit(category);
    }
  }
}
