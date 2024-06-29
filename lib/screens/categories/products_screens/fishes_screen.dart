
import 'package:flutter/material.dart';
import 'package:ptc_test2_app/core/utils/color_manager.dart';
import 'package:ptc_test2_app/core/utils/string_manager.dart';
import 'package:ptc_test2_app/widgets/custom_app_bar_widget.dart';
import '../../../core/const/const.dart';
import '../../../core/utils/values_manager.dart';
import '../../../widgets/deals_item_widget.dart';
import '../../grocery/widget/grid_view_widget.dart';
import '../widget/list_of_tab_widget.dart';
import 'product_deatels_screen.dart';


class FishesScreen extends StatelessWidget {
  const FishesScreen({super.key,});

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: white,
      appBar:customAppBar(title:StringManager.tabItem10 ),
      body:Padding(
      padding: const EdgeInsetsDirectional.only(start: AppPadding.p16),
        child: Column(
          children: [
            ListOfTabWidget(),
            Expanded(
              child: Padding(
                padding: const EdgeInsetsDirectional.only( top: AppPadding.p4,bottom: AppPadding.p4,end: AppPadding.p4,start: AppPadding.p6
                ),
                child: SingleChildScrollView(
                  child: Column(
                       children: [
                         GridViewWidget(
                            mainASpacing: 10,
                            crossASpacing: 0,
                            childAspectRatio: 1,
                            itemCount: Const().fishes.length,
                            customWidget:(context,index)=> InkWell(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (_)=>ProductDetailScreen()));
                              },
                              child: DealsItemWidget(
                                dealModel: Const().fishes[index],
                                                        ),
                            ),
             ),
                  ],
                )),))
          ],
        ),
      ));
  }
}