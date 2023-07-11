import 'package:flutter/material.dart';

import '../../main.dart';

final contextUtils = ContextUtils();
class ContextUtils {
  static BuildContext? getContext() {
    final BuildContext? context =
        scaffoldMessengerKey.currentState?.context;
    if (context != null && context.mounted) {
      return context;
    }
    return null;
  }
}
