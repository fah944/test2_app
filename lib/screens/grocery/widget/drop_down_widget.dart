import 'package:flutter/material.dart';
import 'package:ptc_test2_app/core/utils/assets_manager.dart';
import '../../../core/utils/color_manager.dart';
import '../../../core/utils/string_manager.dart';
import '../../../core/utils/styles_manager.dart';
import '../../../widgets/icon_widget.dart';

class DropDownWidget extends StatefulWidget {
  DropDownWidget({
    Key? key,
    required this.dropDownInitValue,
    required this.text,
    required this.dropdownTextItem,
    required this.dropdownValItem,
  }) : super(key: key);

  String dropDownInitValue;
  String text;
  String dropdownValItem;
  String dropdownTextItem;

  @override
  State<DropDownWidget> createState() => _DropDownWidgetState();
}

class _DropDownWidgetState extends State<DropDownWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          widget.text, 
          style: StyleManager.labelMedium(color: c4),
        ),
        DropdownButton<String>(
          underline: Container(
            color: Colors.transparent,
          ),
          value: widget.dropDownInitValue,
          icon: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: IconWidget(icon: AssetsManager.dropDownIcon, color: c4),
          ),
          onChanged: (String? value) {
            setState(() {
              widget.dropDownInitValue = value!;
            });
          },
          items: [
            DropdownMenuItem<String>(
              value: widget.dropdownValItem,      
              child: Text(
                widget.dropdownTextItem,   
                style: StyleManager.body2Regular(color: c1),
              ),
            ),
          ],
        ),
      ],
    );
  }
}



class RowWithDropDownWidget extends StatelessWidget {
  const RowWithDropDownWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
            mainAxisSize: MainAxisSize.min,
            children: [
             DropDownWidget(
            dropDownInitValue: StringManager.dropDownValue,
            text:StringManager.deliveryTo,
            dropdownValItem: StringManager.dropDownValue,
            dropdownTextItem: StringManager.dropDownValue,),
              const Spacer(),
             DropDownWidget(
            dropDownInitValue: StringManager.time,
            text:StringManager.withIn,
            dropdownValItem: StringManager.time,
            dropdownTextItem: StringManager.time,),
           
            ],
          );
  }
}
