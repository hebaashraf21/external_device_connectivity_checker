import 'package:external_device_connectivity_checker/constants/styles.dart';
import 'package:external_device_connectivity_checker/controllers/connectivity_checker_controller.dart';
import 'package:external_device_connectivity_checker/views/widgets/connected_widget.dart';
import 'package:external_device_connectivity_checker/views/widgets/not_connected_widget.dart';
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
                                              decoration: containerDecoration,
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
                                                    errorStyle: errorTextStyle,
                                                    contentPadding:
                                                        contentPaddingTextField,
                                                    border: InputBorder.none,
                                                    hintText:
                                                        'Printer IP address',
                                                    hintStyle: hintTextStyle),
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
                                              decoration: containerDecoration,
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
                                                    errorStyle: errorTextStyle,
                                                    contentPadding:
                                                        contentPaddingTextField,
                                                    border: InputBorder.none,
                                                    hintText: 'Printer port',
                                                    hintStyle: hintTextStyle),
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
                                        style: buttonStyle,
                                        child: Text("Printer",
                                            style: buttonTextStyle),
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
                              const ConnectedWidget(),
                            if (value.isPrinterNotConnected)
                              const NotConnectedWidget(),
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
                                style: buttonStyle,
                                child: Text("Camera", style: buttonTextStyle),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            if (value.cameraIndicator)
                              const LinearProgressIndicator(),
                            if (value.isCameraConnected)
                              const ConnectedWidget(),
                            if (value.isCameraNotConnected)
                              const NotConnectedWidget(),
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
                                style: buttonStyle,
                                child: Text("Blutooth", style: buttonTextStyle),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            if (value.bluetoothIndicator)
                              const LinearProgressIndicator(),
                            if (value.isBluetoothConnected)
                              const ConnectedWidget(),
                            if (value.isBluetoothNotConnected)
                              const NotConnectedWidget(),
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
                                style: buttonStyle,
                                child: Text("USB", style: buttonTextStyle),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            if (value.usbIndicator)
                              const LinearProgressIndicator(),
                            if (value.isUsbConnected) const ConnectedWidget(),
                            if (value.isUsbNotConnected)
                              const NotConnectedWidget(),
                          ],
                        ),
                      )))),
            ));
  }
}
