import 'package:dio/dio.dart';

import 'package:flutter_boilerplate_project/di/api.dart';

import 'service.dart';

final apiServiceImpl = ApiServiceImpl(Api());

class ApiServiceImpl extends ApiService {
  final Api _api;
  ApiServiceImpl(this._api);

  @override
  Future<Response> getHomeData() async {
    return await _api.get("https://jsonplaceholder.typicode.com/posts");
  }
}
