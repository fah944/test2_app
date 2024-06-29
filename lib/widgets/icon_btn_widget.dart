
import 'package:flutter/material.dart';
import 'package:ptc_test2_app/core/utils/values_manager.dart';
import '../core/utils/color_manager.dart';

class IconBtnWidget extends StatelessWidget {
   IconBtnWidget({super.key, required this.icon,this.color,this.size});

Color? color;
double? size;
IconData icon;
  @override
  Widget build(BuildContext context) {
    return  IconButton(
          onPressed: (){}, 
          icon:  Icon(
           icon,
           size: size ?? AppSize.s20,
           color:color ?? white,));
  }
}




