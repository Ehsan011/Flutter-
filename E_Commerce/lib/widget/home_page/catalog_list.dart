import 'package:e_commerce/models/catalog.dart';
import 'package:e_commerce/widget/home_page/catalog_item.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import '../themes.dart';

class CatalogList extends StatelessWidget {
  const CatalogList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: CatalogModel.item.length,
        itemBuilder: (context, index){
        final catalog = CatalogModel.item[index];
        return InkWell(
          onTap: ()=>{
            print(catalog.name),
          },
          child: CatalogItem(catalog: catalog),
        );
        }
    );
  }
}
