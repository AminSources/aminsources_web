import 'package:dio/dio.dart';

class WorksApiProvider {
  WorksApiProvider();

  Dio dio = Dio();

  Future<dynamic> getWorks() async {
    final response = await dio.get(
      "https://api.github.com/repos/aminsources/aminsources_web/contents/portfolio.json",
    );

    return response;
  }
}
