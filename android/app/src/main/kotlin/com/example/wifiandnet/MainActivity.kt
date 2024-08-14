package com.example.wifiandnet

import android.content.Intent
import android.os.Bundle
import android.provider.Settings
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel

class MainActivity : FlutterActivity() {
    private val CHANNEL = "com.example/app"

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, CHANNEL)
            .setMethodCallHandler { call, result ->
                when (call.method) {
                    "turnOnWiFi" -> {
                        turnOnWiFi()
                        result.success(null)
                    }
                    "turnOffWiFi" -> {
                        turnOffWiFi()
                        result.success(null)
                    }
                    "turnOnMobileData" -> {
                        turnOnMobileData()
                        result.success(null)
                    }
                    "turnOffMobileData" -> {
                        turnOffMobileData()
                        result.success(null)
                    }
                    "turnOnAirplaneMode" -> {
                        turnOnAirplaneMode()
                        result.success(null)
                    }
                    "turnOffAirplaneMode" -> {
                        turnOffAirplaneMode()
                        result.success(null)
                    }
                    else -> result.notImplemented()
                }
            }
    }

    private fun turnOnWiFi() {
        val intent = Intent(Settings.ACTION_WIFI_SETTINGS)
        startActivity(intent)
    }

    private fun turnOffWiFi() {
        val intent = Intent(Settings.ACTION_WIFI_SETTINGS)
        startActivity(intent)
    }

    private fun turnOnMobileData() {
        val intent = Intent(Settings.ACTION_DATA_ROAMING_SETTINGS)
        startActivity(intent)
    }

    private fun turnOffMobileData() {
        val intent = Intent(Settings.ACTION_DATA_ROAMING_SETTINGS)
        startActivity(intent)
    }

    private fun turnOnAirplaneMode() {
        val intent = Intent(Settings.ACTION_AIRPLANE_MODE_SETTINGS)
        startActivity(intent)
    }

    private fun turnOffAirplaneMode() {
        val intent = Intent(Settings.ACTION_AIRPLANE_MODE_SETTINGS)
        startActivity(intent)
    }
}

