import 'package:flutter_test/flutter_test.dart';
import 'package:bluetooth_print/bluetooth_print.dart';
import 'package:bluetooth_print/bluetooth_print_platform_interface.dart';
import 'package:bluetooth_print/bluetooth_print_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockBluetoothPrintPlatform
    with MockPlatformInterfaceMixin
    implements BluetoothPrintPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final BluetoothPrintPlatform initialPlatform = BluetoothPrintPlatform.instance;

  test('$MethodChannelBluetoothPrint is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelBluetoothPrint>());
  });

  test('getPlatformVersion', () async {
    BluetoothPrint bluetoothPrintPlugin = BluetoothPrint();
    MockBluetoothPrintPlatform fakePlatform = MockBluetoothPrintPlatform();
    BluetoothPrintPlatform.instance = fakePlatform;

    expect(await bluetoothPrintPlugin.getPlatformVersion(), '42');
  });
}
