import 'package:flutter/material.dart';
import 'package:fofo_app/setting.dart';
import 'signup.dart';
import 'signin.dart';
import 'package:intl/date_symbol_data_local.dart';

void main() {
  initializeDateFormatting().then((_) => runApp(const MyApp()));
  //runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fofol',
      // home : Signup(),
      home: LoginScreen(),
    );
  }
}
