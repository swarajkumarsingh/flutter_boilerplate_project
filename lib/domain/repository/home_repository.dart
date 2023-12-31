import '../../core/dio/remote_response.dart';
import '../../data/data_source/home_data_source.dart';
import '../../data/repository/home_repository_impl.dart';
import '../models/home/home.dart';

final HomeRepository homeRepository = HomeRepositoryImpl(homeDataSource);

abstract class HomeRepository {
  Future<RemoteResponse<Home>> getHomeData();
}
