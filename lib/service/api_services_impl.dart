import 'package:dio/dio.dart';
import 'package:flutter_boilerplate_project/config.dart';

import 'package:flutter_boilerplate_project/di/api.dart';
import 'package:flutter_logger_plus/flutter_logger_plus.dart';

import 'api_service.dart';

final apiServiceImpl = ApiServiceImpl(Api());

class ApiServiceImpl extends ApiService {
  final Api _api;
  ApiServiceImpl(this._api);

  @override
  Future<Response> getHomeData() async {
    logger.pink(Config.baseUrl);
    return await _api.get(Config.baseUrl);
  }
}
