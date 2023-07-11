import 'dart:async';
import 'dart:isolate';

import 'package:restart_app/restart_app.dart';

import 'config.dart';
import 'error_tracker/error_tracker.dart';
import 'my_app.dart';
import 'package:flutter/material.dart';

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await env.initEnv();
//   runApp(const MyApp());
// }

void main() => _init();

Future<void> _init() async {
  WidgetsFlutterBinding.ensureInitialized();

  // await Firebase.initializeApp();

  FlutterError.onError = errorTracker.onFlutterError;

  Isolate.current.addErrorListener(RawReceivePort((pair) async {
    if (isInProduction) {
      final List<dynamic> errorAndStacktrace = pair;
      await errorTracker.firebaseRecordError(errorAndStacktrace);
      await Restart.restartApp();
    }
  }).sendPort);

  runApp(const AppWrapper());
}
