import 'package:dio/dio.dart';
import 'services_impl.dart';

final ApiService apiService = apiServiceImpl;

abstract class ApiService {
  Future<Response> getHomeData();
}
