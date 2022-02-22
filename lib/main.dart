// @dart=2.9
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'screens/splashscreen/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(primaryColor: const Color(0xfffcb812)),
      debugShowCheckedModeBanner: false,
      title: 'Abaadee.com',
      home: const SplashScreen(),
    );
  }
}
