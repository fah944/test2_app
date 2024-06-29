import 'package:flutter/material.dart';
import 'package:ptc_test2_app/core/const/const.dart';
import '../../core/utils/values_manager.dart';
import '../grocery/widget/grid_view_widget.dart';
import 'widget/category_item_widget.dart';
import 'widget/list_of_tab_view_widget.dart';
import 'widget/list_of_tab_widget.dart';
import 'widget/text_header_widget.dart';


class CategoriesScreen extends StatefulWidget {
   CategoriesScreen({super.key,});

  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsetsDirectional.only(start: AppPadding.p16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: AppSize.s30,),
          const TextHeaderWidget(),
          const SizedBox(height: AppSize.s30,),
          Expanded(
           child: Padding(
            padding: const EdgeInsetsDirectional.only( top: AppPadding.p4,bottom: AppPadding.p4,end: AppPadding.p16),
             child: SingleChildScrollView(
               child: Column(
                 children: [
                  //const CategoryGridView(),
                   GridViewWidget(
                   mainASpacing: 10,
                  crossASpacing: 0,
                  childAspectRatio: 1,
                  itemCount: Const().categories.length,
                  customWidget:(context,index)=>  CategoryItemWidget(
                    groceryModel:Const().categories[index] ,                           
                                ),
             ),
                   const SizedBox(height: AppSize.s38,),
                   ListOfTabWidget( ),
                   const ListOfTabViewWidget(),
                 ],
               ),
             ),
           ),
         ),
          
         ],
      ),
    )
    ;
  }
}






       /*
          CustomScrollView(
               
            slivers: <Widget>
            [
              
          
              SliverGrid(
                 
                delegate: SliverChildBuilderDelegate(
                  childCount: 10 ,
                (context,index) => CategoryItemWidget()
              ),
               gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                ))
            ],
          ),
        */













