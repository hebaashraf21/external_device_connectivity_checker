import 'package:external_device_connectivity_checker/controllers/connectivity_checker_controller.dart';
import 'package:external_device_connectivity_checker/views/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(
              create: (context) => ConnectivityChecherController())
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            appBarTheme: AppBarTheme(
                systemOverlayStyle: SystemUiOverlayStyle(
              statusBarColor: HexColor("#EFEFEF"),
            )),
            scaffoldBackgroundColor: HexColor("#EFEFEF"),
            primarySwatch: Colors.blue,
          ),
          home: HomeScreen(),
        ));
  }
}
