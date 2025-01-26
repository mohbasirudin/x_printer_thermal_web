import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'x_printer_thermal_web_platform_interface.dart';

/// An implementation of [XPrinterThermalWebPlatform] that uses method channels.
class MethodChannelXPrinterThermalWeb extends XPrinterThermalWebPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('x_printer_thermal_web');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
