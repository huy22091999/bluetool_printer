#ifndef FLUTTER_PLUGIN_BLUETOOTH_PRINT_PLUGIN_H_
#define FLUTTER_PLUGIN_BLUETOOTH_PRINT_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace bluetooth_print {

class BluetoothPrintPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  BluetoothPrintPlugin();

  virtual ~BluetoothPrintPlugin();

  // Disallow copy and assign.
  BluetoothPrintPlugin(const BluetoothPrintPlugin&) = delete;
  BluetoothPrintPlugin& operator=(const BluetoothPrintPlugin&) = delete;

  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace bluetooth_print

#endif  // FLUTTER_PLUGIN_BLUETOOTH_PRINT_PLUGIN_H_
