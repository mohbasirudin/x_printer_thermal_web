import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:x_printer_thermal_web/x_printer_thermal_web_method_channel.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  MethodChannelXPrinterThermalWeb platform = MethodChannelXPrinterThermalWeb();
  const MethodChannel channel = MethodChannel('x_printer_thermal_web');

  setUp(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(
      channel,
      (MethodCall methodCall) async {
        return '42';
      },
    );
  });

  tearDown(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(channel, null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
