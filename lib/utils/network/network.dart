import 'dart:async';
import 'network_impl.dart';

final networkUtils = NetworkUtilsImpl();
abstract class NetworkUtils {
  Future<bool> isNetworkConnected();
}
