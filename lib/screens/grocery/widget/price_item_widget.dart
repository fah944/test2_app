import 'package:flutter/material.dart';
import 'package:ptc_test2_app/models/grocery_model.dart';
import '../../../core/helper/size.dart';
import '../../../core/utils/color_manager.dart';
import '../../../core/utils/styles_manager.dart';
import '../../../core/utils/values_manager.dart';
import '../../../widgets/box_style_widget.dart';
import '../../../widgets/circle_icon_btn_widget.dart';
class PriceItemWidget extends StatelessWidget {
  const PriceItemWidget({super.key,required this.model});

 final GroceryModel model;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
          alignment: AlignmentDirectional.centerEnd,
            children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                          Container(              
                            //  padding: const EdgeInsets.symmetric(vertical:  AppPadding.p10),
                             width:getWidth(context)/3.6,//3
                              height: AppSize.s30,
                                 decoration: boxStyleWidget(
                                    radius: AppSize.s20,color: white,
                                   listOfBoxShadow: 
                                        [
                                        BoxShadow(
                                            color: c4.withOpacity(.10),
                                            offset: const Offset(0, AppSize.s4),
                                             blurRadius: 4)
                                                
                                         ]
                                       ),
                                         child:  Row(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                // const Spacer(flex: 2,),
                                                 const SizedBox(
                                                       width: AppSize.s6//s12,
                                                            ),
                                                  Text(
                                                      'Unit',
                                                       style:StyleManager.textbtn( 
                                                              fontWeight: FontWeight.w400,
                                                               color: bc1
                                                                       ),
                                                                       ),
                                                  const SizedBox(
                                                        width: AppSize.s6,
                                                            ),
                                                  Text(
                                                    '\$${model.numOfUnit}',
                                                     style:StyleManager.textbtn(
                                                               fontWeight: FontWeight.w600,
                                                                color: textColor
                                                                     ) ,
                                                                    ),
                                                  /*const SizedBox(
                                                       width: AppSize.s30,
                                                            ),*/
                                                            const Spacer(flex: 6,),
                                                     ],
                                                   ),
                                                 )],),
                                                     circleIconBtnWidget(),
                                                 
                                                 ],
                                             ),
    );
  }
}