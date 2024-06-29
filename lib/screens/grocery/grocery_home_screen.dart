import 'package:flutter/material.dart';
import '../../core/helper/size.dart';
import '../../core/utils/color_manager.dart';
import '../../core/utils/string_manager.dart';
import '../../core/utils/styles_manager.dart';
import '../../core/utils/values_manager.dart';
import '../../widgets/deals_item_widget.dart';
import '../../screens/grocery/widget/info_widget.dart';
import '../../screens/grocery/widget/row_with_text_widget.dart';
import '../../core/const/const.dart';
import '../../widgets/list_of_items.dart';
import 'widget/grid_view_widget.dart';
import 'widget/grocery_item_widget.dart';
import 'widget/offer_item_widget.dart';
import 'widget/drop_down_widget.dart';
import 'widget/search_widget.dart';




class GroceryHomeScreen extends StatelessWidget {
   GroceryHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(start: AppPadding.p16),
      child: Column(
        children: [
          const SizedBox(height: AppSize.s50,),
          const SearchWidget(),
          const SizedBox(height: AppSize.s40,),
          const RowWithDropDownWidget(),
           Expanded(
          child:
           SingleChildScrollView(
             
            child: Column(
             children: [              
             ListOfItems(
                 width: AppSize.s20 ,
                 size: 2.2,
                 itemCount:Const().offerItemes.length,
                 itemBuilder:(context, index) => OfferItemWidget(
                             offerModel: Const().offerItemes[index],
                             size:getWidth(context),
                                  ),
             ),

             RowWithTextWidget(   
                text: StringManager.reccommended,
                style: StyleManager.h1Regular(color: textColor),),

              ListOfItems(
                width: AppSize.s20 ,
                 size: 1.7,
                 itemCount:Const().groceryItemes.length,
                 itemBuilder:(context, index) => GroceryItemWidget(
                      groceryModel:Const().groceryItemes[index],
                          )
             ),
            
              Padding(
                padding: const EdgeInsetsDirectional.only(end: AppPadding.p16),
                child: ListOfItems(
                   width: AppSize.s20 ,
                   size: 2.2,
                   itemCount:Const().infoItems.length,
                   itemBuilder: (context, index) => InfoWidget(
                        infoModel: Const().infoItems[index],),
                             ),
              ),
             RowWithTextWidget(   
                text: StringManager.dealsOnFT,
                style: StyleManager.h3Medium(color: textColor),),
             const SizedBox(height: AppSize.s12,), 
             GridViewWidget(
              mainASpacing: 10,//3.7,
              crossASpacing: 0,
              childAspectRatio: 1,
              itemCount:Const().deals.length,
               customWidget: (context, index) => DealsItemWidget(
                      dealModel:Const().deals[index] ,                           
                                  ),
             ),
             ],
                     ),
          )),
          
        ],),);
    
  }
}


