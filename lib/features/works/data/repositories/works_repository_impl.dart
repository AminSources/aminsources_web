import 'dart:convert';

import 'package:aminsources_web/core/params/no_params.dart';
import 'package:aminsources_web/core/resources/data_state.dart';
import 'package:aminsources_web/features/works/data/data_source/remote/works_api_provider.dart';
import 'package:aminsources_web/features/works/data/models/work_model.dart';
import 'package:aminsources_web/features/works/domain/entities/work_entity.dart';
import 'package:aminsources_web/features/works/domain/repositories/works_repository.dart';
import 'package:dio/dio.dart';

class WorksRepositoryImpl extends WorksRepository {
  final WorksApiProvider worksApiProvider;
  WorksRepositoryImpl({required this.worksApiProvider});

  @override
  Future<DataState<List<WorkEntity>>> getWorks(NoParams params) async {
    try {
      Response response = await worksApiProvider.getWorks();

      if (response.statusCode == 200) {
        //? convert data from base64 format to json format
        final base64Content = response.data['content'] as String;
        final bytes = base64Decode(
          base64Content.replaceAll(RegExp(r'\s+'), ''),
        );

        final jsonString = utf8.decode(bytes);
        final json = jsonDecode(jsonString);

        //? convert json to entity
        final works = json["portfolio"];
        final List<WorkEntity> data = [];
        for (var work in works) {
          data.add(WorkModel.fromJson(work));
        }

        print(data);
        //? return data
        return DataSuccess(data);
      }

      return DataError("Failed to get works");
    } catch (e) {
      return DataError("Failed to get works: $e");
    }
  }
}
