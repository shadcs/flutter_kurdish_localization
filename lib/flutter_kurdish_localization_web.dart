import 'dart:async';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';

/// A web implementation of the FlutterKurdishLocalization plugin.
class FlutterKurdishLocalizationWeb {
  static void registerWith(Registrar registrar) {
    // Register the web plugin (no-op for localization)
  }

  /// Example method to get platform version (for plugin interface compatibility)
  Future<String?> getPlatformVersion() async {
    return 'Web';
  }
}

/// Registers the web implementation with the plugin system.
void registerFlutterKurdishLocalizationWeb(Registrar registrar) {
  FlutterKurdishLocalizationWeb.registerWith(registrar);
}
