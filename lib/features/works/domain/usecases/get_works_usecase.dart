import 'package:aminsources_web/core/params/no_params.dart';
import 'package:aminsources_web/core/resources/data_state.dart';
import 'package:aminsources_web/core/usecase/usecase.dart';
import 'package:aminsources_web/features/works/domain/entities/work_entity.dart';
import 'package:aminsources_web/features/works/domain/repositories/works_repository.dart';

class GetWorksUsecase
    implements Usecase<DataState<List<WorkEntity>>, NoParams> {
  final WorksRepository worksRepository;

  const GetWorksUsecase({required this.worksRepository});
  @override
  Future<DataState<List<WorkEntity>>> call(NoParams params) {
    return worksRepository.getWorks(params);
  }
}
