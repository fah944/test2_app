import 'package:flutter/material.dart';

BoxDecoration boxStyleWidget({
  required Color color,
  required double radius
  }) => BoxDecoration(
  color:color ,
  borderRadius: BorderRadius.circular(radius),
);