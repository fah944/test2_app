import 'package:flutter/material.dart';
import '../../../core/utils/assets_manager.dart';
import '../../../core/utils/color_manager.dart';
import '../../../core/utils/string_manager.dart';
import '../../../core/utils/styles_manager.dart';
import '../../../core/utils/values_manager.dart';
import '../../../widgets/icon_widget.dart';

final _borderStyle = OutlineInputBorder(
  borderRadius: BorderRadius.circular(AppSize.s20),
  borderSide: BorderSide.none,
);

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
          padding: const EdgeInsetsDirectional.only(end: AppPadding.p16),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                      prefixIcon: IconWidget(icon: AssetsManager.searchIcon),
                      hintText: StringManager.hintTextFiled,
                      hintStyle: StyleManager.body2Medium(color: c4),
                      contentPadding: const EdgeInsets.symmetric
                      (horizontal: AppPadding.p12),
                      border: InputBorder.none,
                      enabledBorder: _borderStyle,
                      focusedBorder: _borderStyle,
                      filled: true,
                      fillColor: navyBlueColor),
                ),
              ),
            ],
          ),
        );
  }
}