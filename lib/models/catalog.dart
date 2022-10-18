import 'package:flutter/material.dart';

class CatalogModel{
  static List<Item> items=[
    Item(
        id: 1,
        name: "iPhone 14 Pro Max",
        desc: "Apple iPhone 14th Generation",
        price: 139900,
        color: "#33505a",
        image: "https://d2d22nphq0yz8t.cloudfront.net/88e6cc4b-eaa1-4053-af65-563d88ba8b26/https://media.croma.com/image/upload/v1662703416/Croma%20Assets/Communication/Mobiles/Images/261991_hhfa33.png/mxw_640,f_auto")
  ];
}

class Item{
  final int  id ;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item({this.id=0, this.name="", this.desc="", this.price=0, this.color="", this.image=""});

  factory Item.fromMap(Map<String,dynamic> map){
    return Item(
      id: map["id"],
      name: map["name"],
      desc: map["desc"],
      price: map["price"],
      color: map["color"],
      image: map["image"],
    );
  }
  toMap() => {
    "id":id,
    "name":name,
    "desc":desc,
    "price":price,
    "color":color,
    "image":image
  };
}
