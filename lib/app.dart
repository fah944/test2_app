import 'package:flutter/material.dart';
import 'package:ptc_test2_app/screens/home/home_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
     
      home: MyHomeScreen(),
    );
  }
}
