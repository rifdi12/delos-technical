import 'package:delos_test/helper/router.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Delos Technical Test',
      routes: route(),
      initialRoute: '/home',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
