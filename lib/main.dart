import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:to_where_provider/view/pages/Register.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'على وين',
      theme: ThemeData(
        fontFamily: 'Vazirmatn',
        primarySwatch: Colors.teal,
      ),
      debugShowCheckedModeBanner: false,
      home: RegisterPage(),
    );
  }
}
