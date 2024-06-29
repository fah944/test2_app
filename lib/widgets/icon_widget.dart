

import 'package:flutter/material.dart';

import '../core/utils/color_manager.dart';
import '../core/utils/values_manager.dart';

class IconWidget extends StatelessWidget {
   IconWidget({super.key, required this.icon,this.color,this.size});

Color? color;
double? size;
IconData icon;
  @override
  Widget build(BuildContext context) {
    return  Icon(
         
           icon,
           size: size ?? AppSize.s20,
           color:color ?? white,);
  }
}



