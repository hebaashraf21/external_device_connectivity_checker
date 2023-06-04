import 'package:flutter/material.dart';

class NotConnectedWidget extends StatelessWidget {
  const NotConnectedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}
