import 'package:e_commerce/models/cart.dart';
import 'package:e_commerce/models/catalog.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class MyStore extends VxStore{
  CatalogModel? catalog;
  CartModel? cart;

  MyStore(){
    catalog = CatalogModel();
    cart?.catalog=catalog!;
    cart?.catalog = catalog!;
  }


}