import 'dart:convert';

import 'package:flutter/services.dart';

class WorksApiProvider {
  WorksApiProvider();

  Future<dynamic> getWorks() async {
    final jsonString = await rootBundle.loadString(
      'lib/assets/data/portfolio.json',
    );

    final json = jsonDecode(jsonString);

    return json['portfolio'] as List<dynamic>;
  }
}
