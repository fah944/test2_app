import 'package:flutter/material.dart';
import 'package:ptc_test2_app/models/info_model.dart';
import '../../../core/helper/size.dart';
import '../../../core/utils/color_manager.dart';
import '../../../core/utils/styles_manager.dart';
import '../../../core/utils/values_manager.dart';
import '../../../widgets/box_style_widget.dart';

class InfoWidget extends StatelessWidget {
  const InfoWidget({super.key,required this.infoModel});

   final InfoModel infoModel;
  @override
  Widget build(BuildContext context) {
    return  Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding:const EdgeInsetsDirectional.symmetric(
                      vertical: AppPadding.p30,
                      horizontal: AppPadding.p12
                    ),
                    width: getWidth(context)/2.4,
                   
                    decoration: boxStyleWidget(
                      radius: AppSize.s12,
                    color: infoModel.color),
                    child: Center(
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                infoModel.val,
                                style: StyleManager.h2(
                                color: textColor,
                                fontWeight: FontWeight.w800
                                ),),
                              const SizedBox(width: AppSize.s4,),
                              Text(
                                infoModel.text1,
                                style: StyleManager.h2(
                                  color: textColor,
                                  fontWeight: FontWeight.w400),)
                            ],
                          ),
                          Text(infoModel.text2,style: StyleManager.body2Medium(color: textColor),),
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ;
  }
}