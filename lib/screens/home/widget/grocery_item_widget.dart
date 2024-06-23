import 'package:flutter/material.dart';
import 'package:ptc_test2_app/core/utils/assets_manager.dart';
import 'package:ptc_test2_app/core/utils/color_manager.dart';
import 'package:ptc_test2_app/widgets/image_widget.dart';

class GroceryItemWidget extends StatelessWidget {
  const GroceryItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: 
      [
        Container(
          child: Column(
            children: [
              ImgWidget(pathOfImg: AssetsManager.onboard1),
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

    ],);
  }
}