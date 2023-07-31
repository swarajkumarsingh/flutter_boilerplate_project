import 'package:flutter/material.dart';
import 'package:restart_app/restart_app.dart';

import '../../my_app.dart';
import '../../provider/generic_data_provider.dart';
import 'restart.dart';
import 'restart_widget.dart';

class RestartClassImpl extends RestartClass {
  @override
  Future<bool?> restart() async {
    final bool result  = await Restart.restartApp();
    if (!result) {
      throw "Unable to restart the app";
    }
    return result;
  }

  @override
  void silentRestart([BuildContext? context]) {
    if (context != null) {
      RestartWidget.restartApp(context);
      return;
    }
    final BuildContext? secondaryContext = genericDataProvider.getContext();
    if (secondaryContext != null) {
      RestartWidget.restartApp(secondaryContext);
      return;
    }
    runApp(const MyApp());
    return;
  }
}
