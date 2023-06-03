import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 20),
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
                onPressed: () {},
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
            const Visibility(
              visible: true,
              child: LinearProgressIndicator(),
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 40,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
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
            const Visibility(
              visible: true,
              child: LinearProgressIndicator(),
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 40,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
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
            const Visibility(
              visible: true,
              child: LinearProgressIndicator(),
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 40,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
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
            const Visibility(
              visible: true,
              child: LinearProgressIndicator(),
            ),
          ],
        ),
      )),
    );
  }
}
