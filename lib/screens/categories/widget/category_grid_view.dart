import 'package:flutter/material.dart';
import 'package:ptc_test2_app/core/const/const.dart';
import 'category_item_widget.dart';
/*
class CategoryGridView extends StatelessWidget {
  const CategoryGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Expanded(
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount:2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 0,
                childAspectRatio: 1,),
                clipBehavior: Clip.none,
                shrinkWrap:true,
                physics:const NeverScrollableScrollPhysics(),
                itemCount: Const().categories.length,
                itemBuilder: (context,index)=>  CategoryItemWidget(
                    groceryModel:Const().categories[index] ,                           
                                ),
                ),
          ],
        ),
      ),
    );
  }
}

*/