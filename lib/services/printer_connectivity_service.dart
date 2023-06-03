import 'dart:io';


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

