import 'dart:async';

import 'package:flutter/services.dart';

class TusFlutterClient {
  static const MethodChannel _channel =
      const MethodChannel('tus_flutter_client');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
