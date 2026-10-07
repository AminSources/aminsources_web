import 'package:aminsources_web/core/params/no_params.dart';
import 'package:aminsources_web/core/resources/data_state.dart';
import 'package:aminsources_web/features/works/domain/entities/work_entity.dart';

abstract class WorksRepository {
  Future<DataState<List<WorkEntity>>> getWorks(NoParams params);
}
