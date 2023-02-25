import 'dart:convert';

import 'package:e_commerce/models/catalog.dart';
import 'package:e_commerce/widget/home_page/catalog_header.dart';
import 'package:e_commerce/widget/home_page/catalog_list.dart';
import 'package:e_commerce/widget/themes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import "package:velocity_x/velocity_x.dart";
import '';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }

  void loadData() async{
    var catalogJson = await rootBundle.loadString('assets/files/catalog.json');
    var decodeData = jsonDecode(catalogJson);
    // print(decodeData);
    var productData = decodeData['products'];
    // print(productData);
    CatalogModel.item = List.from(productData).map<Item>((e) => Item.fromMap(e)).toList();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                CatalogHeader(),
                if(CatalogModel.item != null && CatalogModel.item.isNotEmpty)
                  CatalogList().py16().expand()
              else
                CircularProgressIndicator().centered().expand()
            ],
          ),
        ),
      ),
    );
  }
}
