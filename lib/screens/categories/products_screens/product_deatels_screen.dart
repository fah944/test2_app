import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:ptc_test2_app/core/utils/color_manager.dart';
import 'package:ptc_test2_app/core/utils/styles_manager.dart';
import 'package:ptc_test2_app/core/utils/values_manager.dart';
import 'package:ptc_test2_app/widgets/box_style_widget.dart';
import 'package:ptc_test2_app/widgets/custom_app_bar_widget.dart';
import '../../../core/const/const.dart';
import '../../../core/helper/size.dart';
import '../../../core/utils/string_manager.dart';
import '../../../widgets/image_widget.dart';
//curIndex == index ?
class ProductDetailScreen extends StatefulWidget {
  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {

  int curIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:white,
      appBar: customAppBar(title: StringManager.orange),
      body:CustomScrollView(
        slivers: <Widget>[ 

          SliverAppBar( 
            leading: null,
            backgroundColor: white,
            expandedHeight: 200.0, 
            floating: false, 
            pinned: true, 
            flexibleSpace: FlexibleSpaceBar( 
           //   title: Text( 
              // StringManager.thinChoiseTopOrange,  
               //  style: StyleManager.h3SemiBold(color: black),
              //), 
              background: CarouselSlider(
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
                 items: Const.slidimg.map((slide) {
                return Builder(

                   builder: (BuildContext context,)
                       {
                     return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: AppPadding.p30),
                          child: Column(
                           mainAxisAlignment: MainAxisAlignment.center,
                           crossAxisAlignment: CrossAxisAlignment.center,
                              children: [

                        
                          const Spacer(),
                          Center(
                           child: ImgWidget(pathOfImg: slide['img']!,
                            height:getWidth(context)/5,//5
                           width: getWidth(context)/5,
                         ),
                     ),
                     const SizedBox(height: AppSize.s20,),
                      SizedBox(
                        height: 3,
                        child: ListView.builder(
                        itemCount: 3,
                        shrinkWrap:true,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (_,index)=> Row(
                           mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                             Container(
                                 margin:const EdgeInsets.symmetric(horizontal: AppMargin.m4),
                                 width: AppSize.s20 ,
                                 height: AppSize.s6,
                                 decoration:
                                  BoxDecoration(
                                 color: curIndex == index ? orangeLight :ColorManager.c3,
                                 borderRadius: BorderRadius.circular(AppSize.s10)
                                       ),
                             ),
                                 ],
                              ),
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
          ), 
           
          ),
            SliverList( 
            delegate: SliverChildBuilderDelegate( 
              (BuildContext context, int index) { 
                return SizedBox(height: 300,
                child: Column(
                  children: [
                    Container(
                      decoration:boxStyleWidget(radius: AppSize.s22,color: c1)
                    )
                  ],
                ),);
              }, 
              childCount: 50, // Number of list items 
            ), 
          ), 
        ]
,      )
    );
  }
}

class ProductDetailBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(AppPadding.p16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                width: 100,
                height: 100,
                color: Colors.grey[300],
                child: Icon(Icons.image, size: 50),
              ),
            ),
            SizedBox(height:AppSize.s16 ),
            Text(
             StringManager.thinChoiseTopOrange,
              style: StyleManager.h3SemiBold(color: Colors.white),
            ),
            Row(
              children: [
                Text(
                  '\$34.70/KG',
                  style:StyleManager.h3Bold(color: Colors.white),
                ),
              const  SizedBox(width: AppSize.s8),
                Text(
                  '\$22.04 OFF',//labelMedium
                  style: StyleManager.labelMedium(color: Colors.white),),
                const SizedBox(width: 8),
                Text(
                  'Reg: \$56.70 USD',
                  style: TextStyle(fontSize: 14, decoration: TextDecoration.lineThrough, color: Colors.grey),
                ),
              ],
            ),
            SizedBox(height: 16),
            Row(
              children: [
                Icon(Icons.star, color: Colors.orange, size: 20),
                Icon(Icons.star, color: Colors.orange, size: 20),
                Icon(Icons.star, color: Colors.orange, size: 20),
                Icon(Icons.star, color: Colors.orange, size: 20),
                Icon(Icons.star, color: Colors.orange, size: 20),
                SizedBox(width: 8),
                Text(
                  '110 Reviews',
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
              ],
            ),
            SizedBox(height: 16),
            Text(
              'Details',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
            ),
            SizedBox(height: 8),
            Text(
              'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),
            SizedBox(height: 16),
            Text(
              'Nutritional facts',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
            ),
            // Add more details or widgets here as needed
            SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
                    child: Text('Add To Cart'),
                  ),
                ),
                SizedBox(width: 16),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                    child: Text('Buy Now'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}