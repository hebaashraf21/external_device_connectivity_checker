import 'package:external_device_connectivity_checker/controllers/connectivity_checker_controller.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ConnectivityChecherController>(
        builder: (context, value, child) => Scaffold(
              backgroundColor: HexColor("#EFEFEF"),
              appBar: AppBar(
                elevation: 0,
                backgroundColor: HexColor("#EFEFEF"),
                shadowColor: Colors.transparent,
                centerTitle: true,
                // title: const Text(
                //   'Connectivity checker',
                //   style: TextStyle(
                //     fontFamily: 'poppins',
                //     color: Colors.black,
                //     fontWeight: FontWeight.w500,
                //     fontSize: 18,
                //   ),
                // ),
              ),
              body: SingleChildScrollView(
                  child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 35, vertical: 20),
                child: Column(
                  children: [
                    const Text(
                      'Connectivity checker',
                      style: TextStyle(
                        fontFamily: 'poppins',
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    SizedBox(
                      height: 40,
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          value.checkPrinterConnection("printerIpAddress", 123);
                        },
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(17.0),
                          ),
                          primary: HexColor("#333E96"),
                        ),
                        child: Text(
                          "Printer",
                          style: TextStyle(
                              fontSize: 15.0,
                              color: HexColor("#F7F7F7"),
                              fontWeight: FontWeight.w400,
                              fontFamily: 'poppins'),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Visibility(
                      visible: value.printerIndicator,
                      child: LinearProgressIndicator(),
                    ),
                    Visibility(
                      visible: value.isPrinterConnected,
                      child: Row(
                        children: const [
                          Icon(
                            Icons.check,
                            color: Colors.green,
                          ),
                          Text(
                            "Connected",
                            style: TextStyle(
                                fontSize: 15.0,
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'poppins'),
                          )
                        ],
                      ),
                    ),
                    Visibility(
                      visible: value.isPrinterNotConnected,
                      child: Row(
                        children: const [
                          Icon(
                            Icons.close,
                            color: Colors.red,
                          ),
                          Text(
                            "Not connected",
                            style: TextStyle(
                                fontSize: 15.0,
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'poppins'),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    SizedBox(
                      height: 40,
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          value.checkCameraConnection();
                        },
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(17.0),
                          ),
                          primary: HexColor("#333E96"),
                        ),
                        child: Text(
                          "Camera",
                          style: TextStyle(
                              fontSize: 15.0,
                              color: HexColor("#F7F7F7"),
                              fontWeight: FontWeight.w400,
                              fontFamily: 'poppins'),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Visibility(
                      visible: value.cameraIndicator,
                      child: LinearProgressIndicator(),
                    ),
                    Visibility(
                      visible: value.isCameraConnected,
                      child: Row(
                        children: const [
                          Icon(
                            Icons.check,
                            color: Colors.green,
                          ),
                          Text(
                            "Connected",
                            style: TextStyle(
                                fontSize: 15.0,
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'poppins'),
                          )
                        ],
                      ),
                    ),
                    Visibility(
                      visible: value.isCameraNotConnected,
                      child: Row(
                        children: const [
                          Icon(
                            Icons.close,
                            color: Colors.red,
                          ),
                          Text(
                            "Not connected",
                            style: TextStyle(
                                fontSize: 15.0,
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'poppins'),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    SizedBox(
                      height: 40,
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          value.showUnshowBlutoothIndicator();
                          value.checkBlutoothConnection();

                          value.showUnshowBlutoothIndicator();
                        },
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(17.0),
                          ),
                          primary: HexColor("#333E96"),
                        ),
                        child: Text(
                          "Blutooth",
                          style: TextStyle(
                              fontSize: 15.0,
                              color: HexColor("#F7F7F7"),
                              fontWeight: FontWeight.w400,
                              fontFamily: 'poppins'),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Visibility(
                      visible: value.bluetoothIndicator,
                      child: LinearProgressIndicator(),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    SizedBox(
                      height: 40,
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          value.checkUSBConnection();
                        },
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(17.0),
                          ),
                          primary: HexColor("#333E96"),
                        ),
                        child: Text(
                          "USB",
                          style: TextStyle(
                              fontSize: 15.0,
                              color: HexColor("#F7F7F7"),
                              fontWeight: FontWeight.w400,
                              fontFamily: 'poppins'),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Visibility(
                      visible: value.usbIndicator,
                      child: LinearProgressIndicator(),
                    ),
                    Visibility(
                      visible: value.isUsbConnected,
                      child: Row(
                        children: const [
                          Icon(
                            Icons.check,
                            color: Colors.green,
                          ),
                          Text(
                            "Connected",
                            style: TextStyle(
                                fontSize: 15.0,
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'poppins'),
                          )
                        ],
                      ),
                    ),
                    Visibility(
                      visible: value.isUsbNotConnected,
                      child: Row(
                        children: const [
                          Icon(
                            Icons.close,
                            color: Colors.red,
                          ),
                          Text(
                            "Not connected",
                            style: TextStyle(
                                fontSize: 15.0,
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'poppins'),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              )),
            ));
  }
}
