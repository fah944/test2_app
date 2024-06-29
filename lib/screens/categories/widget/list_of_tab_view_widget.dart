import 'package:flutter/material.dart';
import '../../../core/const/const.dart';
import '../../../core/utils/values_manager.dart';
import 'tab_view_item.dart';

class ListOfTabViewWidget extends StatelessWidget {
  const ListOfTabViewWidget({super.key});
  
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView ( 
      child: Column(
        children: [
          ListView.separated(
             itemCount: Const().tabs.length,
             scrollDirection: Axis.vertical,
             shrinkWrap: true,
            
            physics: const NeverScrollableScrollPhysics(),
              separatorBuilder: (_, __) =>  const SizedBox(
                      height: AppSize.s4),
             itemBuilder: (context, index) => TabViewItem(
              
              model: Const().tabs[index]
              ),
          ),
        ],
      ),
    );
  }
}