import 'package:flutter/material.dart';
import '../../../core/utils/styles_manager.dart';
import '../../../core/utils/values_manager.dart';

class TextHeaderWidget extends StatelessWidget {
  const TextHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [  
          Text('Shop',style: StyleManager.customHeading(size: AppSize.s50,
           fontWeight: FontWeight.w300),),
          Text('By Category',style: StyleManager.customHeading(size: AppSize.s50,
           fontWeight: FontWeight.w800),),],
        );
  }
}