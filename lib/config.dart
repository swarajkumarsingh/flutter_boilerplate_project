class Config {
  const Config._();

  static const String salt = "salt";
  static const String applicationName = "Dictionary";
  static const String packageName = "com.production.dictionary";
  static const String packageNameIOS = "com.production.dictionary";
}

final bool isInProduction = _isDebugModeCustom == false ? false : true;

bool get _isDebugModeCustom {
  bool value = false;
  assert(() {
    value = true;
    return true;
  }());
  return value;
}
