import '../../../../di/remote_response.dart';
import '../../domain/models/home.dart';
import '../../domain/repository/home_repository_impl.dart';
import '../data_source/home_data_source.dart';

final HomeRepository homeRepository = HomeRepositoryImpl(homeDataSource);

abstract class HomeRepository {
  Future<RemoteResponse<Home>> getHomeData();
}
