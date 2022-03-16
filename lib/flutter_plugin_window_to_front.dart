
import 'dart:async';

import 'package:flutter/services.dart';

class FlutterPluginWindowToFront {
  static const MethodChannel _channel = MethodChannel('flutter_plugin_window_to_front');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }

  static Future<void> activate(){
    return _channel.invokeMethod('activate');
  }
}
