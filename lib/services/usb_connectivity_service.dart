import 'package:usb_serial/usb_serial.dart';

/// A function to check USB connectivity
/// the function returns true if USB is connected

Future<bool> checkUSBConnectivity() async {
  final usbDevices = await UsbSerial.listDevices();
  return usbDevices.isNotEmpty;
}
