import 'package:flutter/material.dart';
import 'package:ptc_test2_app/core/utils/styles_manager.dart';
import 'package:ptc_test2_app/core/utils/values_manager.dart';
import 'package:ptc_test2_app/widgets/box_style_widget.dart';

import '../../core/const/const.dart';
import '../../core/utils/assets_manager.dart';
import '../../core/utils/color_manager.dart';
import '../../widgets/image_widget.dart';
import 'widget/offer_item_widget.dart';

class MyHomeScreen extends StatelessWidget {
  const MyHomeScreen({super.key});
  @override
  Widget build(BuildContext context) {

    var w =MediaQuery.of(context).size.width;
    var h =MediaQuery.of(context).size.height;

    return Scaffold(
      body:  Column(
        children: [

          const Spacer(),
           SizedBox(
                      height: w / 1.5,
                      child: ListView.separated(
                          padding: const EdgeInsets.all(AppPadding.p20),
                          itemCount: Const().offerItemes.length,
                          separatorBuilder: (_, __) => const SizedBox(
                                width: AppSize.s20,
                              ),
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) => OfferItemWidget(
                            offerModel: Const().offerItemes[index],
                               size:w,
                           // popularSingerModel: Const().singersList[index],
                              )),
                    ),
          
       
        
        ]
      ),
    );
  }
}



/*Column(
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

    ],);*/




    /*Stack(
            children: [
              Container(
                width: width * 0.4,
                decoration: boxStyleWidget(color: ColorManager.c2, radius: AppSize.s12),
                padding: const EdgeInsets.all(AppPadding.p20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Center(
                      child: AspectRatio(
                        aspectRatio: 1, // This keeps the image square
                        child: ImgWidget(
                          pathOfImg: AssetsManager.onboard1,
                          height: width * 0.2,
                        ),
                      ),
                    ),
                    const Divider(),
                    Text(
                      'Fresh Lemon',
                      style: StyleManager.body1Regular(color: ColorManager.textColor),
                    ),
                    Text(
                      'Organic',
                      style: StyleManager.body2Regular(color: ColorManager.c3),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  height: h / 50,
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  decoration: boxStyleWidget(color: ColorManager.c1, radius: AppSize.s24),
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(' Unit 13'),
                      Spacer(),],
                  ),),),
        ],),*/