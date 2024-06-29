
import 'package:circle_nav_bar/circle_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:ptc_test2_app/core/helper/size.dart';
import '../../core/utils/color_manager.dart';
import '../../core/utils/values_manager.dart';
import '../../core/const/const.dart';
import '../../widgets/title.dart';


class MyHomeScreen extends StatefulWidget {
  const MyHomeScreen({super.key});

  @override
  State<MyHomeScreen> createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen> {


  int _tabIndex = 0;

  

int get tabIndex => _tabIndex;
  set tabIndex(int v) {
    _tabIndex = v;
    setState(() {});
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        title:titleWidget(),
        backgroundColor: blueColor,
        actions:tabIndex == 0 ? Const.actions : Const.actionWithSreach ),
      body:Stack(
        children: [
          Column(
            children: [
              Container(
                height: getWidth(context)/1.8,
                color: blueColor,
              ),
            ],
          ),
          Const().pages[tabIndex],
        ],
      ),//Const().pages[tabIndex],
      
      bottomNavigationBar: CircleNavBar(
        shadowColor: c1,
        activeIcons:Const.activeIconList,
        inactiveIcons:Const.inactiveIcons,
        color:white,
        height: getWidth(context)/4.6,//80,
        circleWidth: getWidth(context)/6.4,//60,
        circleColor: bc3,
        activeIndex: tabIndex,
        onTap: (index) {
          tabIndex = index;
        },
        
        cornerRadius: const BorderRadius.only(
          topLeft: Radius.circular(AppSize.s30),
          topRight: Radius.circular(AppSize.s30),
        ),
        elevation:10,
      ),
     
    );
  }
}


