

import 'package:flutter_reactive_ble/flutter_reactive_ble.dart';


FlutterReactiveBle _flutterReactiveBle = FlutterReactiveBle();
List blutoothDevices = [];

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





