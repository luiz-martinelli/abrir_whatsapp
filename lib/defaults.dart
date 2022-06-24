import 'package:flutter/foundation.dart';

class Platform {
  static bool isMobile() {
    switch (defaultTargetPlatform) {
      case TargetPlatform.android: return true;
      case TargetPlatform.iOS: return true;
      default: return false;
    }
  }
}