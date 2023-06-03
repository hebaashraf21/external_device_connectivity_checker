import 'package:flutter/material.dart';

class ConnectivityChecherController extends ChangeNotifier {
  bool printerIndicator = false;
  bool cameraIndicator = false;
  bool usbIndicator = false;
  bool bluetoothIndicator = false;

  void showUnshowPrinterIndicator() {
    if (printerIndicator) {
      printerIndicator = false;
    } else {
      printerIndicator = true;
    }
    notifyListeners();
  }

  void showUnshowCameraIndicator() {
    if (cameraIndicator) {
      cameraIndicator = false;
    } else {
      cameraIndicator = true;
    }
    notifyListeners();
  }

  void showUnshowUsbIndicator() {
    if (usbIndicator) {
      usbIndicator = false;
    } else {
      usbIndicator = true;
    }
    notifyListeners();
  }

  void showUnshowBlutoothIndicator() {
    if (bluetoothIndicator) {
      bluetoothIndicator = false;
    } else {
      bluetoothIndicator = true;
    }
    notifyListeners();
  }
}
