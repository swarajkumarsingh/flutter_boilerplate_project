import '../../../../constants/status_code.dart';
import '../../../../service/service.dart';
import 'package:flutter_logger_plus/flutter_logger_plus.dart';

import '../../../../di/remote_response.dart';
import '../../domain/models/home.dart';

final homeDataSource = HomeDataSource();

class HomeDataSource {
  Future<RemoteResponse<Home>> getHomeData() async {
    RemoteResponse<Home> remoteResponse = RemoteResponse.defaultValue();
    try {
      final response = await apiService.getHomeData();

      if (response.statusCode != STATUS_OK &&
          response.data.toString().isEmpty &&
          response.data != null &&
          response.data!.id.toString().isNotEmpty) {
        return RemoteResponse.somethingWentWrong();
      }

      final Home home = Home.fromJson(response.data[0]);
      remoteResponse = RemoteResponse.success(home);
    } catch (e) {
      remoteResponse = RemoteResponse.somethingWentWrong();
      logger.error(e);
    }

    return remoteResponse;
  }
}
