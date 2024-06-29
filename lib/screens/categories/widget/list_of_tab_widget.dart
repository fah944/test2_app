import 'package:flutter/material.dart';
import '../../../core/const/const.dart';
import '../../../core/utils/color_manager.dart';
import '../../../core/utils/styles_manager.dart';
import '../../../core/utils/values_manager.dart';
import '../../../widgets/box_style_widget.dart';
import '../../../widgets/list_of_items.dart';

class ListOfTabWidget extends StatefulWidget {
   ListOfTabWidget({super.key,});

 
  @override
  State<ListOfTabWidget> createState() => _ListOfTabWidgetState();
}

class _ListOfTabWidgetState extends State<ListOfTabWidget> {
  int curIndex =0;
  @override
  Widget build(BuildContext context) {
    return  ListOfItems(
                    width: AppSize.s12,
                    size: 4.6, 
                    itemBuilder: (context, index) =>
                    GestureDetector(
                  onTap: (){
                    setState(() {
                      curIndex =index;
                    });
                  },
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    padding: const EdgeInsetsDirectional.symmetric(horizontal: AppPadding.p12,
                        vertical: AppPadding.p4),
                    decoration: boxStyleWidget(
                      radius: AppSize.s22,
                       color:curIndex == index  ? orangeLight : white,
                       border: curIndex != index ? Border.all(color: c4): null),
                    child: Center(
                      child: Text(Const().tabsCategory[index], 
                      style: StyleManager.body2SemiBold(color:  curIndex == index ? c1 : bc1),)
                      ),
                  ),
                                 ),
                    itemCount:Const().tabsCategory.length,
                );
  }
}