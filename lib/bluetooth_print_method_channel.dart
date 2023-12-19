import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'bluetooth_print_platform_interface.dart';

/// An implementation of [BluetoothPrintPlatform] that uses method channels.
class MethodChannelBluetoothPrint extends BluetoothPrintPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('bluetooth_print');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
