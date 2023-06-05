import 'package:external_device_connectivity_checker/services/blutooth_connectivity_service.dart';
import 'package:external_device_connectivity_checker/services/camera_connectivity_sevice.dart';
import 'package:external_device_connectivity_checker/services/printer_connectivity_service.dart';
import 'package:external_device_connectivity_checker/services/usb_connectivity_service.dart';
import 'package:flutter/material.dart';

class ConnectivityChecherController extends ChangeNotifier {
  /// Variables that determine whether the progress indicators are shown or not
  bool printerIndicator = false;
  bool cameraIndicator = false;
  bool usbIndicator = false;
  bool bluetoothIndicator = false;

  /// Variables that determine whether the devices are connected or not
  bool isPrinterConnected = false;
  bool isCameraConnected = false;
  bool isUsbConnected = false;
  bool isBluetoothConnected = false;

  /// Variables that determine whether the devices are not connected or not (used to show the result)
  bool isPrinterNotConnected = false;
  bool isCameraNotConnected = false;
  bool isUsbNotConnected = false;
  bool isBluetoothNotConnected = false;

  /// Functions to show/hide progress indicators
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

  void showUsbIndicator() {
    usbIndicator = true;
  }

  void hideUsbIndicator() {
    usbIndicator = false;
  }

  void showBlutoothIndicator() {
    bluetoothIndicator = true;
  }

  void hideBlutoothIndicator() {
    bluetoothIndicator = false;
  }

  /// A function that check the printer connection by calling the printer service
  /// the function also controlles the ui to show the result of the check & show/hide progress indicators
  /// the function takes 2 parameters: printer IP address & printer port
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

  /// A function that check the camera connection by calling the camera service
  /// the function also controlles the ui to show the result of the check & show/hide progress indicators
  void checkCameraConnection() async {
    isCameraConnected = false;
    isCameraNotConnected = false;
    notifyListeners();
    showCameraIndicator();
    await Future.delayed(const Duration(seconds: 2));
    isCameraConnected = await checkCameraConnectivity();
    if (!isCameraConnected) {
      isCameraNotConnected = true;
    }
    notifyListeners();

    hideCameraIndicator();
    notifyListeners();
  }

  /// A function that check the USB connection by calling the USB service
  /// the function also controlles the ui to show the result of the check & show/hide progress indicators
  void checkUSBConnection() async {
    isUsbConnected = false;
    isUsbNotConnected = false;
    notifyListeners();
    showUsbIndicator();
    await Future.delayed(const Duration(seconds: 2));
    isUsbConnected = await checkUSBConnectivity();
    if (!isUsbConnected) {
      isUsbNotConnected = true;
    }
    notifyListeners();
    hideUsbIndicator();
    notifyListeners();
  }

  /// A function that check the bluetooth connection by calling the bluetooth service
  /// the function also controlles the ui to show the result of the check & show/hide progress indicators
  void checkBlutoothConnection() async {
    isBluetoothConnected = false;
    isBluetoothNotConnected = false;
    notifyListeners();
    showBlutoothIndicator();
    await Future.delayed(const Duration(seconds: 2));

    isBluetoothConnected = await checkBlutoothConnectivity();
    if (!isBluetoothConnected) {
      isBluetoothNotConnected = true;
    }
    notifyListeners();
    hideBlutoothIndicator();
    notifyListeners();
  }
}
