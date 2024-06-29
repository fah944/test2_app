import 'package:flutter/material.dart';
import 'package:ptc_test2_app/screens/grocery/widget/divider_widget.dart';
import 'package:ptc_test2_app/screens/grocery/widget/price_item_widget.dart';
import '../../../core/helper/size.dart';
import '../../../core/utils/color_manager.dart';
import '../../../core/utils/styles_manager.dart';
import '../../../core/utils/values_manager.dart';
import '../../../models/grocery_model.dart';
import '../../../widgets/box_style_widget.dart';
import '../../../widgets/image_widget.dart';

class GroceryItemWidget extends StatelessWidget {
  const GroceryItemWidget({super.key,required this.groceryModel});

final GroceryModel groceryModel;
  @override
  Widget build(BuildContext context) {
    return 
          Column(
           mainAxisSize: MainAxisSize.min,
           crossAxisAlignment: CrossAxisAlignment.start,
               children: 
               [
                Container(
                 decoration: boxStyleWidget(radius: AppSize.s12,color: c1),
                 width: getWidth(context) / 2.6,//2.2
                 child: Padding(
                 padding: const EdgeInsets.symmetric(
                  horizontal: AppPadding.p16,
                  vertical: AppPadding.p6),
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
             
                    children: [
                        Center(
                         child: ImgWidget(pathOfImg: groceryModel.img,
                          height:getWidth(context)/5.4,//5
                          width: getWidth(context)/7,),
                 ),
                        myDivider(),
                        Text(groceryModel.name,style: StyleManager.body2SemiBold(color: textColor),),
                        Text(groceryModel.type,style: StyleManager.labelRegular(color: bc1),),
                        const SizedBox(height: AppSize.s8,),
                        PriceItemWidget(
                           model: groceryModel,
                        ),
             ],
             ),
           ),
           ),
           
                  ],
               );
                  /*Column(
      children: 
      [
        Container(
          child: Column(
            children: [
              /*ImgWidget(pathOfImg: AssetsManager.onboard1),*/
              const Divider(),
              Text('date'),
              Text('data'),

              Container(
                child: Row(
                  children: [
                  Text('data'),
                  const Spacer(),
                  IconButton(onPressed: (){}, icon:const Icon( Icons.add,color: ColorManager.c1,))
                ],),
              )

          ],),
        ),

    ],);*/
  }
}