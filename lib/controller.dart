import 'package:flutter/services.dart';

class NetworkUtils {
  static const platform = MethodChannel('com.example/app');

  static Future<void> turnOnWiFi() async {
    try {
      await platform.invokeMethod('turnOnWiFi');
    } on PlatformException catch (e) {
      print("Failed to turn on WiFi: '${e.message}'.");
    }
  }

  static Future<void> turnOffWiFi() async {
    try {
      await platform.invokeMethod('turnOffWiFi');
    } on PlatformException catch (e) {
      print("Failed to turn off WiFi: '${e.message}'.");
    }
  }

  static Future<void> turnOnMobileData() async {
    try {
      await platform.invokeMethod('turnOnMobileData');
    } on PlatformException catch (e) {
      print("Failed to turn on Mobile Data: '${e.message}'.");
    }
  }

  static Future<void> turnOffMobileData() async {
    try {
      await platform.invokeMethod('turnOffMobileData');
    } on PlatformException catch (e) {
      print("Failed to turn off Mobile Data: '${e.message}'.");
    }
  }

  static Future<void> turnOnAirplaneMode() async {
    try {
      await platform.invokeMethod('turnOnAirplaneMode');
    } on PlatformException catch (e) {
      print("Failed to turn on Airplane Mode: '${e.message}'.");
    }
  }

  static Future<void> turnOffAirplaneMode() async {
    try {
      await platform.invokeMethod('turnOffAirplaneMode');
    } on PlatformException catch (e) {
      print("Failed to turn off Airplane Mode: '${e.message}'.");
    }
  }
}
