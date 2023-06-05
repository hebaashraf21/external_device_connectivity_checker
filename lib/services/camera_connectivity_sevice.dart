import 'package:camera/camera.dart';


/// List of camera devices names
List cameraDevices=[];


/// A function to check camera connectivity
/// the function returns true if a camera is connected 
/// the function also fills the camera devices names
Future<bool> checkCameraConnectivity() async {
  List<CameraDescription> cameras = await availableCameras();

  if (cameras.isEmpty) {
    return false;
  } else {
    for (CameraDescription camera in cameras) {
      cameraDevices.add(camera.name);
    }
    return true;
  }
}
