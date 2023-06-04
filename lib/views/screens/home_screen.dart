import 'package:external_device_connectivity_checker/controllers/connectivity_checker_controller.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  var ipAddressController = TextEditingController();
  var portController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Consumer<ConnectivityChecherController>(
        builder: (context, value, child) => Scaffold(
              backgroundColor: HexColor("#EFEFEF"),
              appBar: AppBar(
                elevation: 0,
                backgroundColor: HexColor("#EFEFEF"),
                shadowColor: Colors.transparent,
                centerTitle: true,
              ),
              body: SingleChildScrollView(
                  child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: screenWidth / 6,
                          vertical: screenHeight / 10),
                      child: Card(
                          child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: screenWidth / 10,
                            vertical: screenHeight / 20),
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
                            Form(
                                key: formKey,
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(0),
                                      child: Row(
                                        children: [
                                          Flexible(
                                            flex: 1,
                                            child: Container(
                                              height: 48,
                                              width: double.infinity,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                color: HexColor("#EFEFEF"),
                                              ),
                                              child: TextFormField(
                                                validator: (val) {
                                                  if (val!.isEmpty) {
                                                    return 'Please enter printer IP Address';
                                                  } else {
                                                    return null;
                                                  }
                                                },
                                                cursorColor: Colors.black,
                                                controller: ipAddressController,
                                                keyboardType:
                                                    TextInputType.number,
                                                decoration: InputDecoration(
                                                    errorStyle: const TextStyle(
                                                        fontFamily: 'poppins',
                                                        fontSize: 10,
                                                        fontWeight: FontWeight
                                                            .w400,
                                                        color: Colors.red),
                                                    contentPadding:
                                                        const EdgeInsets
                                                                .symmetric(
                                                            vertical: 10.4,
                                                            horizontal: 16),
                                                    border: InputBorder.none,
                                                    hintText:
                                                        'Printer IP address',
                                                    hintStyle: TextStyle(
                                                        fontFamily: 'poppins',
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        color: HexColor(
                                                            "#939094"))),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: screenWidth / 30,
                                          ),
                                          Flexible(
                                            flex: 1,
                                            child: Container(
                                              height: 48,
                                              width: double.infinity,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                color: HexColor("#EFEFEF"),
                                              ),
                                              child: TextFormField(
                                                validator: (val) {
                                                  if (val!.isEmpty) {
                                                    return 'Please enter printer port';
                                                  } else {
                                                    return null;
                                                  }
                                                },
                                                cursorColor: Colors.black,
                                                controller: portController,
                                                keyboardType:
                                                    TextInputType.number,
                                                decoration: InputDecoration(
                                                    errorStyle: const TextStyle(
                                                        fontFamily: 'poppins',
                                                        fontSize: 10,
                                                        fontWeight: FontWeight
                                                            .w400,
                                                        color: Colors.red),
                                                    contentPadding:
                                                        const EdgeInsets
                                                                .symmetric(
                                                            vertical: 10.4,
                                                            horizontal: 16),
                                                    border: InputBorder.none,
                                                    hintText: 'Printer port',
                                                    hintStyle: TextStyle(
                                                        fontFamily: 'poppins',
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        color: HexColor(
                                                            "#939094"))),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    const SizedBox(height: 20),
                                    SizedBox(
                                      height: 40,
                                      width: double.infinity,
                                      child: ElevatedButton(
                                        onPressed: () {
                                          value.checkPrinterConnection(
                                              ipAddressController.text,
                                              int.parse(portController.text));
                                        },
                                        style: ElevatedButton.styleFrom(
                                          elevation: 0,
                                          backgroundColor: HexColor("#333E96"),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(17.0),
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
                                  ],
                                )),
                            const SizedBox(
                              height: 10,
                            ),
                            if (value.printerIndicator)
                              const LinearProgressIndicator(),
                            if (value.isPrinterConnected)
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
                                  elevation: 0,
                                  backgroundColor: HexColor("#333E96"),
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
                            if (value.cameraIndicator)
                              const LinearProgressIndicator(),
                            if (value.isCameraConnected)
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
                            if (value.isCameraNotConnected)
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
                                  elevation: 0,
                                  backgroundColor: HexColor("#333E96"),
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
                            if (value.bluetoothIndicator)
                              const LinearProgressIndicator(),
                            if (value.isBluetoothConnected)
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
                            if (value.isBluetoothNotConnected)
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
                                  elevation: 0,
                                  backgroundColor: HexColor("#333E96"),
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
                            if (value.usbIndicator)
                              const LinearProgressIndicator(),
                            if (value.isUsbConnected)
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
                            if (value.isUsbNotConnected)
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
                      )))),
            ));
  }
}
