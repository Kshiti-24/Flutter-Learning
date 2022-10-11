import 'package:flutter/material.dart';
class Item{
  final String id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item({this.id, this.name, this.desc, this.price, this.color, this.image});

}
final products=[Item(
  id: "Codepur001",
  name: "iPhone 14 Pro Max",
  desc: "Apple iPhone 14th Generation",
  price: 139900,
  color: "#33505a",
  image: "https://d2d22nphq0yz8t.cloudfront.net/88e6cc4b-eaa1-4053-af65-563d88ba8b26/https://media.croma.com/image/upload/v1662703416/Croma%20Assets/Communication/Mobiles/Images/261991_hhfa33.png/mxw_640,f_auto")
];