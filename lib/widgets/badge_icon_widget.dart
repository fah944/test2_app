/* Badge(
              
            smallSize: AppSize.s16,
            largeSize: AppSize.s18,
                alignment: Alignment.topRight,
                 backgroundColor: orangeLight,
                  isLabelVisible: true,
                  label: Text('3',style: StyleManager.labelRegular(color: white),),
                  child: IconWidget(icon: AssetsManager.shopBagIcon,size: AppSize.s24,
               ),
          ),*/


import 'package:flutter/material.dart';
import 'package:ptc_test2_app/widgets/icon_widget.dart';
import '../core/utils/assets_manager.dart';
import '../core/utils/color_manager.dart';
import '../core/utils/styles_manager.dart';
import '../core/utils/values_manager.dart';

class BadgeIconWidget extends StatelessWidget {
   BadgeIconWidget({super.key, this.color});

Color? color;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppPadding.p8),
      child: Badge(  
            //  offset:const Offset(4, -4) ,
              smallSize: AppSize.s18,
              largeSize: AppSize.s18,
                  alignment: Alignment.topRight,
                   backgroundColor: goldenOrangeColor,
                    isLabelVisible: true,
                    label: Text('3',style: StyleManager.labelRegular(color: white),),
                    child: IconWidget(icon: AssetsManager.shopBagIcon,size: AppSize.s24,
                    color: color,
                 ),
            ),
    );
  }
}