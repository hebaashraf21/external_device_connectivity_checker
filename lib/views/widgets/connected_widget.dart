import 'package:flutter/material.dart';

class ConnectedWidget extends StatelessWidget {
  const ConnectedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}
