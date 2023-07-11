import 'dart:async';
import 'dart:io';

import 'constants/http_override.dart';
import 'error_tracker/error_tracker.dart';
import 'my_app.dart';
import 'package:flutter/material.dart';

void main() => _init();

Future<void> _init() async {
  HttpOverrides.global = MyHttpOverrides();
  await runZonedGuarded<Future<void>>(() async {
    WidgetsFlutterBinding.ensureInitialized();

    await errorTracker.handleSetup();

    runApp(const AppWrapper());
  }, errorTracker.captureError);
}
