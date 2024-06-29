import 'package:flutter/material.dart';
import 'package:ptc_test2_app/models/deal_model.dart';
import 'package:ptc_test2_app/widgets/circle_icon_btn_widget.dart';
import '../core/helper/size.dart';
import '../core/utils/color_manager.dart';
import '../core/utils/styles_manager.dart';
import '../core/utils/values_manager.dart';
import 'box_style_widget.dart';
import 'image_widget.dart';

class DealsItemWidget extends StatelessWidget {
  const DealsItemWidget({super.key,required this.dealModel});

final DealModel dealModel;
  @override
  Widget build(BuildContext context) {
    return  Column(
           mainAxisSize: MainAxisSize.min,
           crossAxisAlignment: CrossAxisAlignment.start,
               children: [

                Container(
                 decoration: boxStyleWidget(radius: AppSize.s12,color: c1),
                 width: getWidth(context) / 2.4,//2.2
                 child: Padding(
                 padding: const EdgeInsets.symmetric( horizontal: AppPadding.p16,  vertical: AppPadding.p16),

                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
             
                    children: [
                      
                        Center(
                         child: ImgWidget(pathOfImg: dealModel.img,
                          height:getWidth(context)/7,//5
                          width: getWidth(context)/7,),
                 ),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                        //  mainAxisAlignment: MainAxisAlignment.end,
                          children:  [
                            const Spacer(),
                          circleIconBtnWidget(),
                        ],),
                        Text(dealModel.val,style: StyleManager.body2SemiBold(color: textColor),),
                        Text(dealModel.text,style: StyleManager.labelRegular(color: bc1),
                        //maxLines:1 ,
                        //overflow: TextOverflow.ellipsis,
                        ),
                       // const SizedBox(height: AppSize.s8,),
                        
             ],
             ),
           ),
           ),
           
                  ],
               );
                 
  }
}

