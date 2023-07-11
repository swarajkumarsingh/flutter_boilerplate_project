import '../../../../di/remote_response.dart';
import '../../../../utils/network/network.dart';
import '../../data/data_source/home_data_source.dart';
import '../../data/repositories/home_repository.dart';
import '../models/home.dart';

final homeRepositoryImpl = HomeRepositoryImpl(homeDataSource);

class HomeRepositoryImpl extends HomeRepository {
  final HomeDataSource _homeDataSource;
  HomeRepositoryImpl(this._homeDataSource);

  @override
  Future<RemoteResponse<Home>> getHomeData() async {
    final bool result = await networkUtils.isNetworkConnected();
    if (!result) {
      return RemoteResponse.internetConnectionError();
    }
    return await _homeDataSource.getHomeData();
  }
}
