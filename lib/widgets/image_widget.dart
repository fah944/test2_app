import 'package:flutter/material.dart';
import 'package:ptc_test2_app/core/helper/size.dart';


class ImgWidget extends StatelessWidget {
  final String pathOfImg;
  final double? height;
    final double? width;

  const ImgWidget({super.key, required this.pathOfImg, this.height, this.width});

  @override
  Widget build(BuildContext context) {
    return Image(
      image: AssetImage(pathOfImg),
      height: height ?? getHeight(context) * 0.3,
      width:width ?? getWidth(context) * 0.8,
      //fit: BoxFit.cover, 
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