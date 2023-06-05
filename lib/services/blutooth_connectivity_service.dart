

import 'package:flutter_reactive_ble/flutter_reactive_ble.dart';


FlutterReactiveBle _flutterReactiveBle = FlutterReactiveBle();

/// List of blutooth devices names
List blutoothDevices = [];


/// A function to check blutooth connectivity
/// the function returns true if any devices connected & false if no device is conected
/// the function also fill the list of devices names 
Future<bool> checkBlutoothConnectivity() async {
  final deviceScanResult = _flutterReactiveBle.scanForDevices(
    withServices: [],
    scanMode: ScanMode.lowLatency,
  );

  await for (final scanResult in deviceScanResult) {
    //print('Found device: ${scanResult.name}');
    blutoothDevices.add(scanResult.name);
  }
  if (blutoothDevices.isEmpty) {
    return false;
  } else {
    return true;
  }
}





