import 'package:flutter/material.dart';

BoxDecoration boxStyleWidget({
   Color? color,
   Color ?bordelColor,
   BoxBorder? border,
  required double radius,
  List<BoxShadow>? listOfBoxShadow,
  }) => BoxDecoration(
    border: border,
  color:color ,
  borderRadius: BorderRadius.circular(radius),
  boxShadow:listOfBoxShadow
);