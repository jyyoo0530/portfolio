

import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/foundation.dart';

class FirebaseAnalyticsService {
  final FirebaseAnalytics _analytics = FirebaseAnalytics.instance;

  static final FirebaseAnalyticsService _instance = FirebaseAnalyticsService._internal();

  factory FirebaseAnalyticsService(){
    return _instance;
  }

  FirebaseAnalyticsService._internal();

  //이벤트로깅
  Future<void> logEvent(String name, Map<String, Object>? parameters) async {
    if(kReleaseMode){
      await _analytics.logEvent(name: name, parameters: parameters);
    }
  }
}