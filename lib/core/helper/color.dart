import 'package:flutter/material.dart';

import '../../widgets/badge_icon_widget.dart';
import '../../widgets/icon_btn_widget.dart';
import '../utils/assets_manager.dart';
import '../utils/values_manager.dart';

changeColor({required Color color}) =>
 [
         IconBtnWidget(icon: AssetsManager.searchIcon,size: AppSize.s24,color: color,),
         BadgeIconWidget(
          color: color,
         ),
        ];