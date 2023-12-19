import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'bluetooth_print_method_channel.dart';

abstract class BluetoothPrintPlatform extends PlatformInterface {
  /// Constructs a BluetoothPrintPlatform.
  BluetoothPrintPlatform() : super(token: _token);

  static final Object _token = Object();

  static BluetoothPrintPlatform _instance = MethodChannelBluetoothPrint();

  /// The default instance of [BluetoothPrintPlatform] to use.
  ///
  /// Defaults to [MethodChannelBluetoothPrint].
  static BluetoothPrintPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [BluetoothPrintPlatform] when
  /// they register themselves.
  static set instance(BluetoothPrintPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
