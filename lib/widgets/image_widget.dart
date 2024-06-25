import 'package:flutter/material.dart';
import 'package:ptc_test2_app/core/utils/values_manager.dart';

import 'package:flutter/material.dart';

class ImgWidget extends StatelessWidget {
  final String pathOfImg;
  final double? height;

  const ImgWidget({super.key, required this.pathOfImg, this.height});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Image(
      image: AssetImage(pathOfImg),
      height: height ?? screenHeight * 0.3,
      width: screenWidth * 0.8, // ضبط العرض بناءً على عرض الشاشة
     // fit: BoxFit.contain, 
    );
  }
}



/*
class ImgWidget extends StatelessWidget {
   ImgWidget({super.key,required this.pathOfImg, this.height});

String pathOfImg;
double? height;
  @override
  Widget build(BuildContext context) {
    return Image(
      image: AssetImage(pathOfImg),
      height:height ?? AppSize.s80,

    );
  }
}*/