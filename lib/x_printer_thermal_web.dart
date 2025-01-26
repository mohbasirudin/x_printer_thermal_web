
import 'x_printer_thermal_web_platform_interface.dart';

class XPrinterThermalWeb {
  Future<String?> getPlatformVersion() {
    return XPrinterThermalWebPlatform.instance.getPlatformVersion();
  }
}
