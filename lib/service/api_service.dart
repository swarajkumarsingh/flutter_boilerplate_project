import 'package:dio/dio.dart';
import 'api_services_impl.dart';

final ApiService apiService = apiServiceImpl;
abstract class ApiService {
  Future<Response> getHomeData();
}
