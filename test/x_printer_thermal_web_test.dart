import 'package:flutter_test/flutter_test.dart';
import 'package:x_printer_thermal_web/x_printer_thermal_web_platform_interface.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockXPrinterThermalWebPlatform
    with MockPlatformInterfaceMixin
    implements XPrinterThermalWebPlatform {
  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {}
