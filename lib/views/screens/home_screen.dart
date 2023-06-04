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
                          elevation: 0, backgroundColor: HexColor("#333E96"),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(17.0),
                          ),
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
                    if(value.printerIndicator)const LinearProgressIndicator(),
                    if(value.isPrinterConnected)
                    Row(
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
                   
                    if (value.isPrinterNotConnected)
                    Row(
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
                          elevation: 0, backgroundColor: HexColor("#333E96"),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(17.0),
                          ),
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
                    if(value.cameraIndicator) const LinearProgressIndicator(),
                    if(value.isCameraConnected)
                   
                    Row(
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
                      if(value.isCameraNotConnected)
                    Row(
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
                    const SizedBox(
                      height: 30,
                    ),
                    SizedBox(
                      height: 40,
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          value.checkBlutoothConnection();
                        },
                        style: ElevatedButton.styleFrom(
                          elevation: 0, backgroundColor: HexColor("#333E96"),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(17.0),
                          ),
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
                    if(value.bluetoothIndicator) const LinearProgressIndicator(),
                    if(value.isBluetoothConnected)
                    Row(
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
                      if(value.isBluetoothNotConnected)
                    Row(
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
                          elevation: 0, backgroundColor: HexColor("#333E96"),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(17.0),
                          ),
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
                    if(value.usbIndicator)const LinearProgressIndicator(),
                   if(value.isUsbConnected)
                    Row(
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
                      if(value.isUsbNotConnected)
                   Row(
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
                  ],
                ),
              )),
            ));
  }
}
