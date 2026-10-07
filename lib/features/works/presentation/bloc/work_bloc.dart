import 'package:aminsources_web/core/params/no_params.dart';
import 'package:aminsources_web/features/works/domain/entities/work_entity.dart';
import 'package:aminsources_web/features/works/domain/usecases/get_works_usecase.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'work_event.dart';
part 'work_state.dart';

class WorkBloc extends Bloc<WorkEvent, WorkState> {
  final GetWorksUsecase getWorksUsecase;

  WorkBloc({required this.getWorksUsecase}) : super(WorkInitial()) {
    on<WorkEvent>((event, emit) {});

    //? get work data handler
    on<LoadWorkData>(_loadWorkData);
  }

  //? get work data
  Future<void> _loadWorkData(LoadWorkData event, emit) async {
    //? set state on loading state
    emit(WorkLoading());

    final dataState = await getWorksUsecase(NoParams());

    if (dataState.data != null) {
      emit(WorkLoaded(data: dataState.data!));
    } else {
      emit(WorkError(message: dataState.message!));
    }
  }
}
