import 'package:flutter/material.dart';
import 'package:ptc_test2_app/widgets/circle_icon_btn_widget.dart';

import '../core/helper/color.dart';
import '../core/utils/color_manager.dart';
import '../core/utils/styles_manager.dart';

PreferredSizeWidget customAppBar({String? title})=>  AppBar(
  backgroundColor: white,
        title: Text(
          title!,
          style: StyleManager.body1Regular(color: black),
          ),
        actions: changeColor(color: black),
        leading:circleLeadingBtnWidget() , );