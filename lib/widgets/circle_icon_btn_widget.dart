import 'package:flutter/material.dart';
import 'package:ptc_test2_app/widgets/icon_btn_widget.dart';
import '../core/utils/color_manager.dart';
import '../core/utils/values_manager.dart';

circleIconBtnWidget()=> CircleAvatar(
                            backgroundColor: navyBlueColor,
                             radius:AppSize.s14,//s18 ,
                             child: IconBtnWidget(
                                      icon: Icons.add,
                                      color: white,
                                      size: AppSize.s12,
                              ),
                           );


 circleLeadingBtnWidget()=> Padding(
   padding: const EdgeInsets.all(AppPadding.p8),
   child: CircleAvatar(
      
                              backgroundColor: c1,
                               radius:AppSize.s16,//s18 ,
                               child: IconBtnWidget(
                                        icon: Icons.arrow_back_ios_new,
                                        color: black,
                                        size: AppSize.s16,
                                ),
                             ),
 );