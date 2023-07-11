import 'package:flutter/material.dart';
import '../../my_app.dart';
import '../../provider/generic_data_provider.dart';
import 'restart_widget.dart';
import 'restart.dart';
import 'package:restart_app/restart_app.dart';

class RestartClassImpl extends RestartClass {
  @override
  void restart() {
    Restart.restartApp();
    return;
  }

  @override
  void silentRestart(BuildContext? context) {
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
