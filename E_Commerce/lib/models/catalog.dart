import 'package:flutter/material.dart';

class CatalogModel{
  static List<Item> item = [
    Item(
        id: 1,
        name: "iPhone 12 Pro",
        desc: "Apple iPhone 12th generation",
        price: 999,
        color: "#33505a",
        image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRISJ6msIu4AU9_M9ZnJVQVFmfuhfyJjEtbUm3ZK11_8IV9TV25-1uM5wHjiFNwKy99w0mR5Hk&usqp=CAc")
  ];
}


class Item {
   int id;
   String name;
   String desc;
   num price;
   String color;
   String image;


  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.image});

  factory Item.fromMap(Map<String, dynamic> json) {
    return Item(
    id : json['id'],
    name : json['name'],
    desc : json['desc'],
    price : json['price'],
    color : json['color'],
    image : json['image']);
  }

  toMap()=> {
    'id': id,
    'name': name,
    'desc': desc,
    'price': price,
    'color': color,
    'image': image,
  };

   Map<String, dynamic> toJson() {
     final Map<String, dynamic> data = new Map<String, dynamic>();
     data['id'] = this.id;
     data['name'] = this.name;
     data['desc'] = this.desc;
     data['price'] = this.price;
     data['color'] = this.color;
     data['image'] = this.image;
     return data;
   }



}
