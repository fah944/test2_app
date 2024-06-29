
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class GridViewWidget extends StatelessWidget
 {
 
  
    final int itemCount;
    final double mainASpacing;// 3.7,
    final double crossASpacing;// 3.7,
    final double childAspectRatio;// 1 / 1.70
    Widget? Function(BuildContext, int) customWidget;
   

    GridViewWidget({
      super.key,
      required this.childAspectRatio, 
      required this.crossASpacing, 
      required this.mainASpacing, 
      required this.customWidget, 
      required this.itemCount,  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount:2,
             mainAxisSpacing: mainASpacing,
              crossAxisSpacing: crossASpacing,
              childAspectRatio: childAspectRatio,),
              clipBehavior: Clip.none,
              shrinkWrap:true,
              physics:const NeverScrollableScrollPhysics(),
              itemCount: itemCount,
              itemBuilder:  customWidget,
              ),
        ],
      ),
    );
  }
}

