import 'dart:io';

/// A function to check printer connectivity
/// the function returns true if a printer is connected
/// the function takes 2 parameters: printer IP address & printer port
Future<bool> checkPrinterConnectivity(
    String printerIpAddress, int printerPort) async {
  try {
    final socket = await Socket.connect(printerIpAddress, printerPort,
        timeout: const Duration(seconds: 5));
    socket.destroy();
    return true;
  } catch (e) {
    return false;
  }
}
