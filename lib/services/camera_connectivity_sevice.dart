import 'package:camera/camera.dart';

Future<bool> checkCameraConnectivity() async {
  // Fetch available cameras
  List<CameraDescription> cameras = await availableCameras();

  if (cameras.isEmpty) {
    print('No cameras found');
    return false;
  } else {
    print('Available cameras:');
    for (CameraDescription camera in cameras) {
      print('Camera: ${camera.name}');
    }
    return true;
  }
}
