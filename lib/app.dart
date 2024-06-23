import 'package:flutter/material.dart';

import 'screens/on_boarding/on_boarding_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
     debugShowCheckedModeBanner: false,
      home: OnBoardingScreen(),
    );
  }
}
