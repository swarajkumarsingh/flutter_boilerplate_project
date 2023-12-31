import 'dart:async';
import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'core/config/firebase_options.dart';
import 'core/constants/http_override.dart';
import 'core/di/injection_container.dart';
import 'core/error_tracker/error_tracker.dart';
import 'my_app.dart';

Future<void> main() async => _init();

Future<void> _init() async {
  HttpOverrides.global = MyHttpOverrides();
  await runZonedGuarded<Future<void>>(() async {
    WidgetsFlutterBinding.ensureInitialized();

    // firebase init
    await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

    // Initialize dependency injection
    await DependencyInjection.setup();

    // add error observers & handle them
    await errorTracker.handleError();

    runApp(const AppWrapper());
  }, errorTracker.captureError);
}
