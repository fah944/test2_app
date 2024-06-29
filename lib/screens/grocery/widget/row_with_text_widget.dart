import 'package:flutter/material.dart';

class RowWithTextWidget extends StatelessWidget {
   RowWithTextWidget({super.key,required this.text,required this.style});
    
   String text;
   TextStyle style;
  @override
  Widget build(BuildContext context) {
    return Row(
                children: [
                Text(text,style: style),
                const Spacer(),
              ],
            ) ;
  }
}