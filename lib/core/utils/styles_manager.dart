
import 'package:flutter/material.dart';
import 'package:ptc_test2_app/core/utils/values_manager.dart';

import 'color_manager.dart';

class StyleManager {
 
  static TextStyle customHeading({
        Color? color,
       double? size ,
       FontWeight ?fontWeight}) {
    return TextStyle(
      color: color?? c1,
      fontWeight: fontWeight,
      fontSize: size,
    );
  }

//30
// Heading 01
  static TextStyle h1Bold({
        Color? color,
       double size = AppSize.s30,
       FontWeight fontWeight = FontWeight.bold}) {
    return TextStyle(
      color: color,
      fontWeight: fontWeight,
      fontSize: size,
    );
  }

  static TextStyle h1SemiBold({
        Color? color,
       double size = AppSize.s30,
       FontWeight fontWeight = FontWeight.w600,}) {
    return TextStyle(
      color: color,
      fontWeight: fontWeight,
      fontSize: size,
    );
  }

  static TextStyle h1Medium({
        Color? color,
       double size = AppSize.s30,
       FontWeight fontWeight = FontWeight.w500,}) {
    return TextStyle(
      color: color,
      fontWeight: fontWeight,
      fontSize: size,
    );
  }

  static TextStyle h1Regular({
        Color? color,
       double size = AppSize.s30,
       FontWeight fontWeight = FontWeight.normal,}) {
    return TextStyle(
      color: color,
      fontWeight: fontWeight,
      fontSize: size,
    );
  }


//26
// Heading 02
  static TextStyle h2Bold({
        Color? color,
       double size = AppSize.s26,
       FontWeight fontWeight = FontWeight.bold}) {
    return TextStyle(
      color: color,
      fontWeight: fontWeight,
      fontSize: size,
    );
  }
 
  static TextStyle h2SemiBold({
        Color? color,
       double size = AppSize.s26,
       FontWeight fontWeight = FontWeight.w600,}) {
    return TextStyle(
      color: color,
      fontWeight: fontWeight,
      fontSize: size,
    );
  }

  static TextStyle h2Medium({
        Color? color,
       double size = AppSize.s26,
       FontWeight fontWeight = FontWeight.w500,}) {
    return TextStyle(
      color: color,
      fontWeight: fontWeight,
      fontSize: size,
    );
  }

  static TextStyle h2Regular({
        Color? color,
       double size = AppSize.s26,
       FontWeight fontWeight = FontWeight.normal,}) {
    return TextStyle(
      color: color,
      fontWeight: fontWeight,
      fontSize: size,
    );
  }
  static TextStyle h2({
        Color? color,
       double size = AppSize.s26,
       FontWeight? fontWeight}) {
    return TextStyle(
      color: color,
      fontWeight: fontWeight,
      fontSize: size,
    );
  }

//20
// Heading 03
  static TextStyle h3Bold({
        Color? color,
       double size = AppSize.s20,
       FontWeight fontWeight = FontWeight.bold}) {
    return TextStyle(
      color: color,
      fontWeight: fontWeight,
      fontSize: size,
    );
  }

  static TextStyle h3SemiBold({
        Color? color,
       double size = AppSize.s20,
       FontWeight fontWeight = FontWeight.w600,}) {
    return TextStyle(
      color: color,
      fontWeight: fontWeight,
      fontSize: size,
    );
  }

  static TextStyle h3Medium({
        Color? color,
       double size = AppSize.s20,
       FontWeight fontWeight = FontWeight.w500,}) {
    return TextStyle(
      color: color,
      fontWeight: fontWeight,
      fontSize: size,
    );
  }

  static TextStyle h3Regular({
        Color? color,
       double size = AppSize.s20,
       FontWeight fontWeight = FontWeight.normal,}) {
    return TextStyle(
      color: color,
      fontWeight: fontWeight,
      fontSize: size,
    );
  }

 //18
// Heading 04
  static TextStyle h4Bold({
        Color? color,
       double size = AppSize.s18,
       FontWeight fontWeight = FontWeight.bold}) {
    return TextStyle(
      color: color,
      fontWeight: fontWeight,
      fontSize: size,
    );
  }

  static TextStyle h4SemiBold({
        Color? color,
       double size = AppSize.s18,
       FontWeight fontWeight = FontWeight.w600,}) {
    return TextStyle(
      color: color,
      fontWeight: fontWeight,
      fontSize: size,
    );
  }

  static TextStyle h4Medium({
        Color? color,
       double size = AppSize.s18,
       FontWeight fontWeight = FontWeight.w500,}) {
    return TextStyle(
      color: color,
      fontWeight: fontWeight,
      fontSize: size,
    );
  }

  static TextStyle h4Regular({
        Color? color,
       double size = AppSize.s18,
       FontWeight fontWeight = FontWeight.normal,}) {
    return TextStyle(
      color: color,
      fontWeight: fontWeight,
      fontSize: size,
    );
  }



/////////////////////////////////
///16
  // Body 01
     static TextStyle body1SemiBold({
        Color? color,
       double size = AppSize.s16,
       FontWeight fontWeight = FontWeight.w600}) {
    return TextStyle(
      color: color,
      fontWeight: fontWeight,
      fontSize: size,
    );
  }
     
     static TextStyle body1Medium({
        Color? color,
       double size = AppSize.s16,
       FontWeight fontWeight = FontWeight.w500}) {
    return TextStyle(
      color: color,
      fontWeight: fontWeight,
      fontSize: size,
    );
  }

     static TextStyle body1Regular({
        Color? color,
       double size = AppSize.s16,
       FontWeight fontWeight = FontWeight.normal}) {
    return TextStyle(
      color: color,
      fontWeight: fontWeight,
      fontSize: size,
    );
  }
  
///14
  // Body 02
 static TextStyle body2SemiBold({
        Color? color,
       double size = AppSize.s14,
       FontWeight fontWeight = FontWeight.w600}) {
    return TextStyle(
      color: color,
      fontWeight: fontWeight,
      fontSize: size,
    );
  }
     
 static TextStyle body2Medium({
        Color? color,
       double size = AppSize.s14,
       FontWeight fontWeight = FontWeight.w500}) {
    return TextStyle(
      color: color,
      fontWeight: fontWeight,
      fontSize: size,
    );
  }

 static TextStyle body2Regular({
        Color? color,
       double size = AppSize.s14,
       FontWeight fontWeight = FontWeight.normal}) {
    return TextStyle(
      color: color,
      fontWeight: fontWeight,
      fontSize: size,
    );
  }
  

////////////////////////////////


//12
// Label
static TextStyle labelMedium({
        Color? color,
       double size = AppSize.s12,
       FontWeight fontWeight = FontWeight.w500}) {
    return TextStyle(
      color: color,
      fontWeight: fontWeight,
      fontSize: size,
    );
  }

static TextStyle labelRegular({
        Color? color,
       double size = AppSize.s12,
       FontWeight fontWeight = FontWeight.normal}) {
    return TextStyle(
      color: color,
      fontWeight: fontWeight,
      fontSize: size,
    );
  }




// Button
/*static TextStyle button1({
        Color? color,
       double size = AppSize.s14,
       FontWeight fontWeight = FontWeight.bold}) {
    return TextStyle(
      color: color,
      fontWeight: fontWeight,
      fontSize: size,
    );
  }*/




static TextStyle textbtn({
        Color? color,
       double size = AppSize.s14,
       FontWeight? fontWeight}) {
    return TextStyle(
      color: color,
      fontWeight: fontWeight,
      fontSize: size,
    );
  }
static TextStyle button2({
        Color? color,
       double size = AppSize.s12,
       FontWeight fontWeight = FontWeight.bold}) {
    return TextStyle(
      color: color,
      fontWeight: fontWeight,
      fontSize: size,
    );
  }

}




