import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'x_printer_thermal_web_method_channel.dart';

abstract class XPrinterThermalWebPlatform extends PlatformInterface {
  /// Constructs a XPrinterThermalWebPlatform.
  XPrinterThermalWebPlatform() : super(token: _token);

  static final Object _token = Object();

  static XPrinterThermalWebPlatform _instance = MethodChannelXPrinterThermalWeb();

  /// The default instance of [XPrinterThermalWebPlatform] to use.
  ///
  /// Defaults to [MethodChannelXPrinterThermalWeb].
  static XPrinterThermalWebPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [XPrinterThermalWebPlatform] when
  /// they register themselves.
  static set instance(XPrinterThermalWebPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
