import 'package:flutter/foundation.dart';

class Config {
  const Config._();

  // ENV variables
  static String baseUrl = "https://jsonplaceholder.typicode.com/posts";

  static const String applicationName = "";
  static const String packageName = "";
  static const String packageNameIOS = "";
}

const bool isInProduction = kDebugMode == true ? false : true;
