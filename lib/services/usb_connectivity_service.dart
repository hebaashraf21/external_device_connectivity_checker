import 'package:usb_serial/usb_serial.dart';

Future<bool> checkUSBConnectivity() async {
  final usbDevices = await UsbSerial.listDevices();
  return usbDevices.isNotEmpty;
}
