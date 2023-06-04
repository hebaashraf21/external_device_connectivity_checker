import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

final buttonTextStyle = TextStyle(
    fontSize: 15.0,
    color: HexColor("#F7F7F7"),
    fontWeight: FontWeight.w400,
    fontFamily: 'poppins');

final buttonStyle = ElevatedButton.styleFrom(
  elevation: 0,
  backgroundColor: HexColor("#333E96"),
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(17.0),
  ),
);

final hintTextStyle = TextStyle(
    fontFamily: 'poppins',
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: HexColor("#939094"));

const contentPaddingTextField =
    EdgeInsets.symmetric(vertical: 10.4, horizontal: 16);

final containerDecoration = BoxDecoration(
  borderRadius: BorderRadius.circular(8.0),
  color: HexColor("#EFEFEF"),
);

const errorTextStyle= TextStyle(
                                                        fontFamily: 'poppins',
                                                        fontSize: 10,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        color: Colors.red);
