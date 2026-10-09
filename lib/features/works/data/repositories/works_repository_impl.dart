import 'package:aminsources_web/core/params/no_params.dart';
import 'package:aminsources_web/core/resources/data_state.dart';
import 'package:aminsources_web/features/works/data/data_source/local/works_api_provider.dart';
import 'package:aminsources_web/features/works/data/models/work_model.dart';
import 'package:aminsources_web/features/works/domain/entities/work_entity.dart';
import 'package:aminsources_web/features/works/domain/repositories/works_repository.dart';

class WorksRepositoryImpl extends WorksRepository {
  final WorksApiProvider worksApiProvider;
  WorksRepositoryImpl({required this.worksApiProvider});

  @override
  Future<DataState<List<WorkEntity>>> getWorks(NoParams params) async {
    try {
      final works = await worksApiProvider.getWorks();

      //? convert json to entity
      final List<WorkEntity> data = [];
      for (var work in works) {
        data.add(WorkModel.fromJson(work));
      }

      //? return data
      return DataSuccess(data);
    } catch (e) {
      return DataError("Failed to get works: $e");
    }
  }
}
