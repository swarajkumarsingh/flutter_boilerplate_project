///
/// * author: swaraj kumar singh
/// * email: sswaraj169@gmail.com
///
/// A package provides an easy way to handle errors and report to various crash analysis tools
/// *Uncomment the code, and use tools of your needs *

// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_crashlytics/firebase_crashlytics.dart';
// import 'package:flutter/foundation.dart';
// import 'package:sentry_flutter/sentry_flutter.dart';

// import '../constants.dart';
// import 'breadcrumbs.dart';

import 'package:flutter/foundation.dart';
import 'package:restart_app/restart_app.dart';

final errorTracker = _ErrorTracker();

class _ErrorTracker {
  void onFlutterError(FlutterErrorDetails e) {
    captureError(e, e.stack);
    if (kDebugMode) FlutterError.dumpErrorToConsole(e);
  }

  Future<void> restartApp() async {
    await Restart.restartApp();
  }

  Future<void> captureError(
    dynamic error,
    StackTrace? stackTrace, {
    dynamic hint,
  }) async {
    // await Future.wait([
    //   Sentry.captureException(error, stackTrace: stackTrace, hint: hint),
    //   FirebaseCrashlytics.instance.recordError(error, stackTrace),
    // ]);
  }

  Future<void> firebaseRecordError(List<dynamic> errorAndStacktrace) async {
    // await FirebaseCrashlytics.instance.recordError(
    //   errorAndStacktrace.first,
    //   errorAndStacktrace.last,
    //   fatal: true,
    // );
  }
}

// class _ErrorTracker {
//   User? _user;
//   String? _phone;

//   _init(String station) async {
//     await Future.wait([
//       _initSentry(station),
//       FirebaseCrashlytics.instance.setCustomKey('station', station),
//     ]);
//   }

//   void onFlutterError(FlutterErrorDetails e) {
//     captureError(e, e.stack);
//     if (kDebugMode) FlutterError.dumpErrorToConsole(e);
//   }

//   Future<void> captureError(
//     dynamic error,
//     StackTrace? stackTrace, {
//     dynamic hint,
//   }) async {
//     await Future.wait([
//       Sentry.captureException(error, stackTrace: stackTrace, hint: hint),
//       FirebaseCrashlytics.instance.recordError(error, stackTrace),
//     ]);
//   }

//   Future<void> addBreadCrumb(
//     String message, {
//     /// A dictionary whose contents depend on the breadcrumb type. Additional
//     /// parameters that are unsupported by the type are rendered as a key/value
//     /// table.
//     Map<String, dynamic>? data,

//     /// A dotted string indicating what the crumb is or from where it comes.
//     /// Typically it is a module name or a descriptive string. For instance,
//     /// ui.click could be used to indicate that a click happened in the UI or
//     /// flask could be used to indicate the event originated in that framework.
//     String? category,
//     BreadCrumbType type = BreadCrumbType.default_,
//   }) async {
//     Sentry.addBreadcrumb(Breadcrumb(
//       message: message,
//       data: data,
//       category: category,
//       type: type.value(),
//       timestamp: DateTime.now(),
//     ));
//     FirebaseCrashlytics.instance.log(message + (data != null ? ': $data' : ''));
//   }

//   Future<void> log(String message) async {
//     await Future.wait([
//       Sentry.captureMessage(message),
//       FirebaseCrashlytics.instance.log(message),
//     ]);
//   }

//   void setPhone(String phone) {
//     _phone = phone;
//     _setSentryUser();
//   }

//   void setUser(User user) async {
//     _user = user;
//     _phone = user.phoneNumber ?? _phone;
//     _setSentryUser();
//     await FirebaseCrashlytics.instance.setUserIdentifier(user.uid);
//   }

//   void _setSentryUser() {
//     Sentry.configureScope((scope) {
//       scope.user = SentryUser(
//         id: _user?.uid,
//         email: _user?.email,
//         extras: {'phone': _phone ?? scope.user?.extras?['phone']},
//       );
//     });
//   }
// }

// Future<void> initErrorTracker(String station) async {
//   await errorTracker._init(station);
// }

// Future<void> _initSentry(String station) async {
//   await SentryFlutter.init(
//     (options) {
//       options.environment = sentryEnvironment;
//       options.dsn = sentryDSN;
//       options.tracesSampleRate = 0.1;
//       options.sendDefaultPii = true;
//       if (!kDebugMode) {
//         options.debug = true;
//       }
//     },
//   );
//   Sentry.configureScope((scope) => scope.setTag('station', station));
// }
