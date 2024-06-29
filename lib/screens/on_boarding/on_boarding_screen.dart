
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:ptc_test2_app/widgets/icon_widget.dart';
import '../../core/const/const.dart';
import '../../core/helper/size.dart';
import '../../core/utils/color_manager.dart';
import '../../core/utils/styles_manager.dart';
import '../../core/utils/values_manager.dart';
import '../../widgets/box_style_widget.dart';
import '../../widgets/image_widget.dart';
import '../home/my_home_screen.dart';


class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  int curIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blueColor,
      body:CarouselSlider(
        options: CarouselOptions(
          onPageChanged:(int index,reson)
          {
            setState(() {
              curIndex =index;
            });
          } ,
          height: getSize(context).height,
          viewportFraction: 1.0,
          enableInfiniteScroll: false,
        ),
        items: Const.slides.map((slide) {
          return Builder(

            builder: (BuildContext context,)
             {
              return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: AppPadding.p30),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Spacer(flex: 2,),
                      Text(
                        slide['title']!,
                        style:StyleManager.h1Bold(color: ColorManager.c1) 
                      ),
                      const SizedBox(height: AppSize.s20),
                      Text(
                        slide['subtitle']!,
                        style:StyleManager.h4Medium(color: ColorManager.c4),
                      ),
                      const SizedBox(height: AppSize.s40),
                      SizedBox(
                        height: 3,
                        child: ListView.builder(
                        itemCount: 3,
                        shrinkWrap:true,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (_,index)=> Row(
                           mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                             Container(
                                 margin:const EdgeInsets.symmetric(horizontal: AppMargin.m4),
                                 width: curIndex == index ? AppSize.s38 :AppSize.s24,
                                 height: AppSize.s4,
                                 decoration:
                                  BoxDecoration(
                                 color: curIndex == index ? ColorManager.c1 :ColorManager.c4,
                                 borderRadius: BorderRadius.circular(AppSize.s10)
                                       ),
                             ),
                                 ],
                              ),
                              ),
                              ),
                      const Spacer(),
                      Center(
                       child: ImgWidget(pathOfImg: slide['img']!,
                       ),
                     ),
                      const Spacer(),
                      Center(
                       child: Container(
                        padding:const EdgeInsets.symmetric(
                          horizontal: AppSize.s24,
                          vertical:AppSize.s8 ),
                        decoration:boxStyleWidget(
                          color: ColorManager.c1,
                          radius:getWidth(context) / 20//AppSize.s20
                        ),
                         child: MaterialButton(
                          height: getWidth(context)  /10,
                          minWidth: getWidth(context)  * 0.5,
                          
                          onPressed: ()
                          {
                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=> MyHomeScreen()));
                          },
                         child:Row(
                          mainAxisSize: MainAxisSize.min,                         
                          children: 
                          [
                          
                           Text( slide['tb']!,
                            style: StyleManager.body1Regular(
                              color: ColorManager.textColor,
                              ),
                              ),
                           const SizedBox(width: AppSize.s50,),
                           IconWidget(icon:Icons.arrow_forward_sharp,color:textColor),
                           ],
                          ),),
                       ),
                     ),
                      const Spacer(),
                    ],
                  ),
              );
            },
          );
        }).toList(),
      ),
    );
  }
}

