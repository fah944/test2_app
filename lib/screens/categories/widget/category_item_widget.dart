import 'package:flutter/material.dart';
import 'package:ptc_test2_app/screens/grocery/widget/divider_widget.dart';
import '../../../core/helper/size.dart';
import '../../../core/utils/color_manager.dart';
import '../../../core/utils/styles_manager.dart';
import '../../../core/utils/values_manager.dart';
import '../../../models/grocery_model.dart';
import '../../../widgets/box_style_widget.dart';
import '../../../widgets/image_widget.dart';

class CategoryItemWidget extends StatelessWidget {
  const CategoryItemWidget({super.key,required this.groceryModel});

final GroceryModel groceryModel;
  @override
  Widget build(BuildContext context) {
    return 
          Column(
           mainAxisSize: MainAxisSize.min,
           crossAxisAlignment: CrossAxisAlignment.center,
               children: 
               [
                Container(
                 decoration: boxStyleWidget(radius: AppSize.s12,color: c1),
                 width: getWidth(context) / 2.6,
                 child: Padding(
                 padding: const EdgeInsets.symmetric(
                  horizontal: AppPadding.p16,
                  vertical: AppPadding.p6),
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.center,
             
                    children: [
                       const SizedBox(height: AppSize.s10,),
                        ImgWidget(pathOfImg: groceryModel.img,
                         height:getWidth(context)/5.4,
                         width: getWidth(context)/7,),
                        myDivider(),
                        Text(groceryModel.name,style: StyleManager.body2SemiBold(color: textColor),),
                        Text(groceryModel.type,style: StyleManager.labelRegular(color: bc1),),
                       
                        const SizedBox(height: AppSize.s20,),
                       
             ],
             ),
           ),
           ),
           
                  ],
               );
                 
  }
}