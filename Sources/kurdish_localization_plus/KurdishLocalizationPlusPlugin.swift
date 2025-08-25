import Flutter

#if os(iOS)
import UIKit
#elseif os(macOS)
import Cocoa
import FlutterMacOS
#endif

public class KurdishLocalizationPlusPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "kurdish_localization_plus", binaryMessenger: registrar.messenger())
    let instance = KurdishLocalizationPlusPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    switch call.method {
    case "getPlatformVersion":
      #if os(iOS)
      result("iOS " + UIDevice.current.systemVersion)
      #elseif os(macOS)
      result("macOS " + ProcessInfo.processInfo.operatingSystemVersionString)
      #endif
    default:
      result(FlutterMethodNotImplemented)
    }
  }
}
