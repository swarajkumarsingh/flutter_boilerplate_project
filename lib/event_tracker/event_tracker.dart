///
/// * author: swaraj kumar singh
/// * email: sswaraj169@gmail.com
///
/// A package provides an easy way to handle events and report to various event analysis tools
/// *Uncomment the code, and use tools of your needs *

// import 'package:facebook_app_events/facebook_app_events.dart';
// import 'package:firebase_analytics/firebase_analytics.dart';
// import 'package:webengage_flutter/webengage_flutter.dart';

// import '../config.dart';
// import '../models/user.dart';

// final eventTracker = _EventTracker();

// class _EventTracker {
//   static final _facebookAppEvents = FacebookAppEvents();
//   static final _firebaseAnalytics = FirebaseAnalytics.instance;

//   void log(String name, [Map<String, dynamic>? params]) {
//     // Copy params, since we might receive a `const` map which we can't modify.
//     params ??= {};
//     _firebaseAnalytics.logEvent(
//       name: name,
//       parameters: Map<String, Object?>.from(params),
//     );
//     _facebookAppEvents.logEvent(name: name, parameters: params);
//     WebEngagePlugin.trackEvent(name, params);
//   }

//   void screen(String screenName, [Map<String, dynamic>? params]) {
//     _firebaseAnalytics.setCurrentScreen(screenName: screenName);
//     WebEngagePlugin.trackScreen(screenName, params);
//   }

//   void setUser(AppUser? user) {
//     if (user == null) return;
//     _facebookAppEvents.setUserID(user.uid);
//     _facebookAppEvents.setUserData(phone: user.phone);
//     _firebaseAnalytics.setUserId(id: user.uid);
//     WebEngagePlugin.setUserAttribute('station', stationId);
//     WebEngagePlugin.setUserAttributes(user.toJson());
//   }

//   void setPhone(String phone) {
//     _facebookAppEvents.setUserData(phone: phone);
//     WebEngagePlugin.setUserPhone(phone);
//   }

//   void logOut() {
//     _facebookAppEvents.clearUserID();
//     _firebaseAnalytics.setUserId(id: null);
//     WebEngagePlugin.userLogout();
//   }

//   void logAppOpen(String stationId) {
//     _firebaseAnalytics.logAppOpen();
//     _firebaseAnalytics.setUserProperty(name: 'station', value: stationId);
//     WebEngagePlugin.trackEvent('app_open', {'station': stationId});
//   }

//   void logShare({
//     String name = 'share',
//     String contentType = 'share_text',
//     String itemId = 'android_app',
//     Map<String, dynamic>? aParams,
//     String? method,
//   }) {
//     final Map<String, dynamic> params = {
//       for (var p in (aParams ?? {}).entries) p.key: p.value,
//       'id': itemId,
//       'type': contentType,
//     };
//     if (method != null) {
//       params['method'] = method;
//     } else {
//       method = 'generic';
//     }
//     WebEngagePlugin.trackEvent(name, params);
//     _facebookAppEvents.logEvent(name: name, parameters: params);
//     _firebaseAnalytics.logShare(
//       contentType: contentType,
//       itemId: itemId,
//       method: method,
//     );
//   }

//   void logListenTime(String stationId, int time) {
//     _facebookAppEvents.logEvent(
//       name: 'listen_time',
//       valueToSum: time.toDouble(),
//     );
//     WebEngagePlugin.trackEvent(
//       'listen_time',
//       {'listen_time': time, 'station': stationId},
//     );
//   }

//   Future<void> logLogin(AppUser user) async {
//     await _firebaseAnalytics.logLogin(loginMethod: 'phone');
//     _facebookAppEvents.logEvent(name: 'login');
//     WebEngagePlugin.userLogin(user.uid);
//   }
// }
