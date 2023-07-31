import 'package:firebase_analytics/firebase_analytics.dart';

final eventTracker = _EventTracker();

class _EventTracker {
  static final _firebaseAnalytics = FirebaseAnalytics.instance;

  void log(String name, [Map<String, dynamic>? params]) {
    // Copy params, since we might receive a `const` map which we can't modify.
    params ??= {};
    _firebaseAnalytics.logEvent(
      name: name,
      parameters: Map<String, Object?>.from(params),
    );
  }

  void screen(String screenName, [Map<String, dynamic>? params]) {
    _firebaseAnalytics.setCurrentScreen(screenName: screenName);
  }

  void setUser(dynamic user) {
    if (user == null) return;
    _firebaseAnalytics.setUserId(id: user.uid);
  }

  void logOut() {
    _firebaseAnalytics.setUserId(id: null);
  }

  void logAppOpen(String stationId) {
    _firebaseAnalytics.logAppOpen();
    _firebaseAnalytics.setUserProperty(name: 'station', value: stationId);
  }

  void logShare({
    String name = 'share',
    String contentType = 'share_text',
    String itemId = 'android_app',
    Map<String, dynamic>? aParams,
    String? method,
  }) {
    final Map<String, dynamic> params = {
      for (var p in (aParams ?? {}).entries) p.key: p.value,
      'id': itemId,
      'type': contentType,
    };
    if (method != null) {
      params['method'] = method;
    } else {
      method = 'generic';
    }
    _firebaseAnalytics.logShare(
      contentType: contentType,
      itemId: itemId,
      method: method,
    );
  }

  void logListenTime(String stationId, int time) {
    _firebaseAnalytics.logEvent(
      name: "listen_time",
      parameters: {'listen_time': time, 'station': stationId},
    );
  }

  Future<void> logLogin() async {
    await _firebaseAnalytics.logLogin(loginMethod: 'phone');
  }
}
