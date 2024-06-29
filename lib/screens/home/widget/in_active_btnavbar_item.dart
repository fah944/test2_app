import 'package:flutter/material.dart';
import 'package:ptc_test2_app/widgets/icon_widget.dart';
import '../../../core/utils/color_manager.dart';
import '../../../core/utils/styles_manager.dart';
import '../../../core/utils/values_manager.dart';

class InActiveBtnavbarItem extends StatelessWidget {
   InActiveBtnavbarItem({super.key,required this.icon,required this.labelOfIcon});
  
  IconData icon;
  String labelOfIcon;
  @override
  Widget build(BuildContext context) {
    return  Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      child:  Column(
                        children: 
                      [
                        const SizedBox(height: AppSize.s8,),
                            Padding(
                             padding: const EdgeInsets.symmetric(horizontal: AppPadding.p8),
                             child: IconWidget(
                              icon: icon,
                              size: AppSize.s24,
                              color:black),
                           ),
                         //12
                         Text(labelOfIcon,style: StyleManager.labelRegular(color:bc1 ),),
                         const SizedBox(height: AppSize.s20,),
                      ],),
                    ),
                  ],
                );
  }
}