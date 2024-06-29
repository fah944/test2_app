import 'package:flutter/material.dart';
import 'package:ptc_test2_app/models/tab_view_model.dart';
import 'package:ptc_test2_app/screens/categories/products_screens/fishes_screen.dart';
import '../../../core/helper/size.dart';
import '../../../core/utils/color_manager.dart';
import '../../../core/utils/styles_manager.dart';
import '../../../core/utils/values_manager.dart';
import '../../../widgets/box_style_widget.dart';
import '../../../widgets/image_widget.dart';
import '../products_screens/fruits_screen.dart';
import '../products_screens/meat_screen.dart';

final _deatelsSCreens =<Widget>[
  FishesScreen(),
  MeatScreen(),
  FruitsScreen()
];



 
class TabViewItem extends StatefulWidget {
   TabViewItem({super.key,
  required this.model,
  //required this.index
   });

 //final int index ;
 final TabViewModel model;

  @override
  State<TabViewItem> createState() => _TabViewItemState();
}

class _TabViewItemState extends State<TabViewItem> {


 int _tabIndex = 0;

  

int get tabIndex => _tabIndex;
  set tabIndex(int v) {
    _tabIndex = v;
    setState(() {});
  }


  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(
        //   Const().pages[tabIndex],
          builder: (_) =>_deatelsSCreens[tabIndex]));
      },
      child: Row(
             mainAxisSize: MainAxisSize.min,
             children: [
                        
             Container(
                 padding:const  EdgeInsetsDirectional.symmetric(
                  vertical:AppPadding.p12 ,//horizontal:AppPadding.p12 
                   ),
                 decoration: boxStyleWidget(radius: AppSize.s12,),
                 child: Row(
                   mainAxisSize: MainAxisSize.min,
      
                     children: [
                       Container(
                          width: getWidth(context)/3,
                          height: getWidth(context)/2,//180,
      
                          decoration: boxStyleWidget(
                            radius: AppSize.s12, 
                              color: widget.model.color
                              ),
      
                                child: Center(
                                child: ImgWidget(
                                  pathOfImg:widget.model.img,
                                height:getWidth(context)/5.4,
                                  width: getWidth(context)/7,),
                                   ),
                              ),
                             const SizedBox(width: AppSize.s26,),
                             Padding(
                               padding: const EdgeInsetsDirectional.symmetric(vertical: AppPadding.p4),
      
                               child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                Text(widget.model.name,style: StyleManager.h4Bold(color: textColor),),
                                const SizedBox(height: AppSize.s10,),
                               // const Spacer(),
                                Text(widget.model.category,style: StyleManager.body1Regular(color: bc1),),
                                const SizedBox(height: AppSize.s24,),
      
                                Text(widget.model.text,style: StyleManager.body2Regular(color:c4),),
                                const SizedBox(height: AppSize.s10,),
                               // const Spacer(),
                                Row(
                                  children: [
                                    Text(widget.model.quantity,style: StyleManager.body1Medium(color:b3),),
                                    Text('/KG',style: StyleManager.body1Regular(color:b3),),
                                  ],
                                )
                               
                               
                               ],),
                             )
                            ,
                            ],
                          ),
                        ),
                      ],
                     ),
    );
  }
}