
import 'package:flutter/material.dart';
import '../core/helper/size.dart';
import '../core/utils/values_manager.dart';

class ListOfItems extends StatelessWidget {
   ListOfItems({super.key,required this.size,required this.itemBuilder,required this.itemCount,this.width, this.scrollDirection,this.hight,this.shrinkWrap,this.physics});

double size;
double? width;
double? hight;
int itemCount;
Widget? Function(BuildContext, int) itemBuilder;
Axis? scrollDirection;
bool? shrinkWrap;
ScrollPhysics? physics;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      
                 height: getWidth(context) / size,
                 child: ListView.separated(
                  physics:physics,
                  shrinkWrap: shrinkWrap ?? false,
                   padding: const EdgeInsets.symmetric(vertical: AppPadding.p20),  
                    itemCount:itemCount,
                    separatorBuilder: (_, __) =>  SizedBox(
                      width: width,
                      height: hight),
                    scrollDirection: scrollDirection ?? Axis.horizontal,
                    itemBuilder: itemBuilder),
                        );
  }
}