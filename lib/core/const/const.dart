 import 'package:flutter/material.dart';
import 'package:ptc_test2_app/core/utils/assets_manager.dart';
import 'package:ptc_test2_app/models/grocery_model.dart';
import 'package:ptc_test2_app/models/offer_model.dart';

class Const{

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



  final List<OfferModel> offerItemes =
  [
    OfferModel(img: AssetsManager.onboard1,valueOffer: 15,numOfOrder: '03'),
    OfferModel(img: AssetsManager.onboard1,valueOffer: 35,numOfOrder: '05'),
    OfferModel(img: AssetsManager.onboard1,valueOffer: 80,numOfOrder: '10'),

  ];


    final List<GroceryModel> groceryItemes =
  [
    GroceryModel(img: AssetsManager.onboard1,name: 'Fresh Lemon',type:'Organic', numOfUnit:'12'),
    GroceryModel(img: AssetsManager.onboard1,name: 'Green Tea',type:'Organic', numOfUnit:'03'),
    GroceryModel(img: AssetsManager.onboard1,name: 'Fresh Lemon',type:'Organic', numOfUnit:'06'),

  ];
}

