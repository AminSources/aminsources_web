import 'package:aminsources_web/features/works/data/data_source/remote/works_api_provider.dart';
import 'package:aminsources_web/features/works/data/repositories/works_repository_impl.dart';
import 'package:aminsources_web/features/works/domain/repositories/works_repository.dart';
import 'package:aminsources_web/features/works/domain/usecases/get_works_usecase.dart';
import 'package:aminsources_web/features/works/presentation/bloc/work_bloc.dart';
import 'package:get_it/get_it.dart';

GetIt sl = GetIt.instance;

void setupLocator() {
  //? api providers
  WorksApiProvider worksApiProvider = WorksApiProvider();

  //? register repositories
  sl.registerLazySingleton<WorksRepository>(
    () => WorksRepositoryImpl(worksApiProvider: worksApiProvider),
  );

  //? register usecases
  sl.registerLazySingleton(
    () => GetWorksUsecase(worksRepository: sl<WorksRepository>()),
  );

  //? register bloc
  sl.registerLazySingleton<WorkBloc>(
    () => WorkBloc(getWorksUsecase: sl<GetWorksUsecase>()),
  );
}
