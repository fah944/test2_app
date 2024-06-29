import 'package:flutter/material.dart';
import 'package:ptc_test2_app/core/utils/assets_manager.dart';
import 'package:ptc_test2_app/core/utils/color_manager.dart';
import 'package:ptc_test2_app/core/utils/styles_manager.dart';
import 'package:ptc_test2_app/core/utils/values_manager.dart';
import 'package:ptc_test2_app/models/offer_model.dart';

import '../../../../../widgets/box_style_widget.dart';
import '../../../widgets/image_widget.dart';



class OfferItemWidget extends StatelessWidget {
   OfferItemWidget({required this.offerModel,required this.size});

final OfferModel offerModel;
double size;
  @override
  Widget build(BuildContext context) {
       

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
         Container(

          width: size / 1.4,//1.6
          padding: const EdgeInsets.symmetric(
            horizontal: AppSize.s30,
            vertical: AppSize.s20
          ),
          decoration: boxStyleWidget(
            color:offerModel.color, 
            radius: AppSize.s12 ,),
          
           child: Row(
             mainAxisSize: MainAxisSize.min,
              children: [
                ImgWidget( 
                  pathOfImg: offerModel.img,
                  height:size/5,
                  width: size/7,
                    ),
                 const Spacer(),
                 Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('Get',style: StyleManager.h3Regular(color: ColorManager.c1),),

                     Text(
                      '${offerModel.valueOffer}% OFF',
                       style: StyleManager.h2Medium(
                        color: ColorManager.c1,
                        ),),
                        
                     Text(
                      'On first ${offerModel.numOfOrder} order',
                       style: StyleManager.labelRegular(
                        color: ColorManager.c1,
                        ),),
                  ],
                 ),
              ],
            ),
         ),
        
      ],
    );
  }
}



//LIST OF OFFER ITEM

/* Center(
        child: SizedBox(
                  height: MediaQuery.of(context).size.width / 1.5,
                  child: ListView.separated(
                      padding: const EdgeInsets.all(AppPadding.p20),
                      itemCount: Const().offerItemes.length,
                      separatorBuilder: (_, __) => const SizedBox(
                            width: AppSize.s20,
                          ),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => OfferItemWidget(
                        offerModel: Const().offerItemes[index],
                          // size: MediaQuery.of(context).size.width ,
                       // popularSingerModel: Const().singersList[index],
                          )),
                ),
      ),*/