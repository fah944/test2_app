import 'package:flutter/material.dart';
import 'package:ptc_test2_app/core/utils/assets_manager.dart';
import 'package:ptc_test2_app/core/utils/string_manager.dart';
import 'package:ptc_test2_app/models/deal_model.dart';
import 'package:ptc_test2_app/models/grocery_model.dart';
import 'package:ptc_test2_app/models/offer_model.dart';
import 'package:ptc_test2_app/models/tab_view_model.dart';
import 'package:ptc_test2_app/screens/categories/categories_screen.dart';
import 'package:ptc_test2_app/screens/favorite/favorite_screen.dart';
import 'package:ptc_test2_app/screens/grocery/grocery_home_screen.dart';
import '../../models/info_model.dart';
import '../../screens/home/widget/in_active_btnavbar_item.dart';
import '../../screens/more/more_screen.dart';
import '../../widgets/badge_icon_widget.dart';
import '../../widgets/icon_btn_widget.dart';
import '../utils/color_manager.dart';
import '../utils/values_manager.dart';

class Const{

///onboard 
static List<Map<String, String>> slides = [
    {  
      'id':'1',
      'title': 'Your holiday\nshopping \ndelivered to your home 🏡',
      'subtitle': 'There\'s something for everyone to enjoy with Sweet Shop Favourites',
      'img':AssetsManager.onboard1,
      'tb':'Get Statrted'
    },
    
    {
      'id':'2',
      'title': 'Fast \nand \nreliable delivery \n🚚',
      'subtitle': 'Enjoy quick and secure delivery to your doorstep, hassle-free.',
      'img':AssetsManager.onboard2,      
      'tb':'Get Statrted'
    },
    {
      'id':'3',
      'title': 'Discover\nexclusive deals \njust \nfor you 🎉',
      'subtitle': 'Stay updated with the latest offers to your preferences.',
      'img':AssetsManager.onboard3,
      'tb':'Get Statrted'
    },
  ];


///home

static List<Widget> actions = [
         BadgeIconWidget(),
        ];


static List<Widget> actionWithSreach = [
         IconBtnWidget(icon: AssetsManager.searchIcon,size: AppSize.s24,),
         BadgeIconWidget(),
        ];

static List<Icon> activeIconList = <Icon>[
                const Icon(
                  AssetsManager.actHomeIcon,
                  size: AppSize.s24,
                  color:ColorManager.orangeLightColor),
            
                const Icon(
                  AssetsManager.actCategoryIcon,  
                  size: AppSize.s24,
                  color:  ColorManager.orangeLightColor),
            
                const Icon(
                  AssetsManager.actFavoIcon,
                  size: AppSize.s24,
                  color:ColorManager.orangeLightColor),
            
                const Icon(
                  AssetsManager.moreIcon,
                  size: AppSize.s24,
                  color:ColorManager.orangeLightColor),
              ];

static  List<Widget> inactiveIcons = [
                
              InActiveBtnavbarItem(
                  icon:AssetsManager.inactHomeIcon,
                   labelOfIcon: 'Home',
              ),
             InActiveBtnavbarItem(
                  icon:AssetsManager.inactCategoryIcon,//FontAwesomeIcons.borderAll,
                   labelOfIcon: 'Categories',
              ),
               InActiveBtnavbarItem(
                  icon:AssetsManager.inactFavoIcon,
                   labelOfIcon: 'Favorite',
              ),
               InActiveBtnavbarItem(
                  icon:AssetsManager.moreIcon,
                   labelOfIcon: 'More',
              ),
              ];
 
  final List<Widget> pages = <Widget>[
    GroceryHomeScreen(),
    CategoriesScreen(),
    FavoriteScreen(),
      MoreScreen()
  ];
 
 final List<OfferModel> offerItemes =
  [
    OfferModel(img: AssetsManager.onboard1,valueOffer: 15,numOfOrder: '03',color: goldenOrangeColor),
    OfferModel(img: AssetsManager.onboard1,valueOffer: 35,numOfOrder: '05',color: yeLight),
    OfferModel(img: AssetsManager.onboard1,valueOffer: 80,numOfOrder: '10',color: goldenOrangeColor),

  ];


    final List<GroceryModel> groceryItemes =
  [
    GroceryModel(img: AssetsManager.onboard1,name: 'Fresh Lemon',type:'Organic', numOfUnit:'12'),
    GroceryModel(img: AssetsManager.onboard1,name: 'Green Tea',type:'Organic', numOfUnit:'03'),
    GroceryModel(img: AssetsManager.onboard1,name: 'Fresh Lemon',type:'Organic', numOfUnit:'06'),

  ];

  final List<InfoModel> infoItems =
  [
    InfoModel(val: '346', text1: StringManager.uSD, text2: StringManager.yourTotalSavings,color: orangeLight),
    InfoModel(val: '215', text1: StringManager.hRS, text2: StringManager.yourTimeSaved,color:yeLight)

  ];


  
  final List<DealModel> deals =
  [
    DealModel(img: AssetsManager.onboard1,
    val: '\$325',text:'Organe Package 1| 1 bundle'),
    DealModel(img: AssetsManager.onboard1,val: '\$89',text:'Grean Tea Package 2| 1 bundle'),
    DealModel(img: AssetsManager.onboard1,val: '\$89',text:'Grean Tea Package 2| 1 bundle'),
     DealModel(img: AssetsManager.onboard1,val: '\$89',text:'Grean Tea Package 2| 1 bundle'),
    

  ];
  final List<GroceryModel> categories =
  [
    GroceryModel(img: AssetsManager.onboard1,name: 'Fishes',type:'From Sea'),
    GroceryModel(img: AssetsManager.onboard1,name: 'Meats',type:'Organic', ),
    GroceryModel(img: AssetsManager.onboard1,name: 'Vegetables',type:'Organic'),
     GroceryModel(img: AssetsManager.onboard1,name: 'Fruits',type:'Fresh & Organic'),
      GroceryModel(img: AssetsManager.onboard1,name: 'Meats',type:'Organic', ),
    GroceryModel(img: AssetsManager.onboard1,name: 'Vegetables',type:'Organic'),

  ];

  final List<String> tabsCategory=
  [
    StringManager.tab1,
    StringManager.tab2,
    StringManager.tab3,
    StringManager.tab4,

  ];

   final List<TabViewModel> tabs=
  [
    TabViewModel(
      img: AssetsManager.onboard1,
      name:StringManager.tabItem10 ,
      category: StringManager.tabItem11, 
      text:StringManager.constText ,
      quantity:StringManager.q1 , 
      color: orangeLight),

    TabViewModel(
      img: AssetsManager.onboard1,
      name: StringManager.tabItem20,
      category:StringManager.tabItem21 ,       
      text:StringManager.constText ,
      quantity:StringManager.q2 , 
      color: pink),

      TabViewModel(
      img: AssetsManager.onboard1,
      name: StringManager.tabItem20,
      category:StringManager.tabItem21 ,       
      text:StringManager.constText ,
      quantity:StringManager.q2 , 
      color: greenLight),

  ];




   final List<DealModel> fishes =
  [
  
     DealModel(img: AssetsManager.onboard1,val: '\$325',text:'Clown Tang.H03'),
     DealModel(img: AssetsManager.onboard1,val: '\$89',text:'Clownfish.H03'),
     DealModel(img: AssetsManager.onboard1,val: '\$89',text:'Gold Fish.H03'),  
     DealModel(img: AssetsManager.onboard1,val: '\$325',text:'Fish.H03'),
     DealModel(img: AssetsManager.onboard1,val: '\$89',text:'Clownfish.H03'),
     DealModel(img: AssetsManager.onboard1,val: '\$325',text:'Clown Tang.H03'),
     DealModel(img: AssetsManager.onboard1,val: '\$89',text:'Clownfish.H03'),
     DealModel(img: AssetsManager.onboard1,val: '\$325',text:'Clown Tang.H03'),

  ];


}

