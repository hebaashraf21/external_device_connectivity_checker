import 'package:external_device_connectivity_checker/services/blutooth_connectivity_service.dart';
import 'package:external_device_connectivity_checker/services/camera_connectivity_sevice.dart';
import 'package:external_device_connectivity_checker/services/printer_connectivity_service.dart';
import 'package:external_device_connectivity_checker/services/usb_connectivity_service.dart';
import 'package:flutter/material.dart';

class ConnectivityChecherController extends ChangeNotifier {
  bool printerIndicator = false;
  bool cameraIndicator = false;
  bool usbIndicator = false;
  bool bluetoothIndicator = false;

  bool isPrinterConnected = false;
  bool isCameraConnected = false;
  bool isUsbConnected = false;
  bool isBluetoothConnected = false;

  bool isPrinterNotConnected = false;
  bool isCameraNotConnected = false;
  bool isUsbNotConnected = false;
  bool isBluetoothNotConnected = false;

  void showPrinterIndicator() {
    printerIndicator = true;
  }

  void hidePrinterIndicator() {
    printerIndicator = false;
  }

  void showCameraIndicator() {
    cameraIndicator = true;
  }

  void hideCameraIndicator() {
    cameraIndicator = false;
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

  Future checkPrinterConnection(
      String printerIpAddress, int printerPort) async {
    isPrinterConnected = false;
    isPrinterNotConnected = false;
    notifyListeners();
    showPrinterIndicator();
    await Future.delayed(const Duration(seconds: 2));
    isPrinterConnected =
        await checkPrinterConnectivity(printerIpAddress, printerPort);
    if (!isPrinterConnected) {
      isPrinterNotConnected = true;
    }
    notifyListeners();

    hidePrinterIndicator();
    notifyListeners();
  }

  void checkCameraConnection() async {
    isCameraConnected = false;
    isCameraNotConnected = false;
    notifyListeners();
    showCameraIndicator();
    await Future.delayed(const Duration(seconds: 2));
    isCameraConnected = await checkCameraConnectivity();
    print(isCameraConnected);
    if (!isCameraConnected) {
      isCameraNotConnected = true;
    }
    notifyListeners();

    hideCameraIndicator();
    notifyListeners();
  }

  void checkBlutoothConnection() async {
    isBluetoothConnected = await checkBlutoothConnectivity();
    print(blutoothDevices);
    notifyListeners();
  }

  void checkUSBConnection() async {
    isBluetoothConnected = await checkUSBConnectivity();
    notifyListeners();
  }
}
