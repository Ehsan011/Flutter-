import 'package:e_commerce/models/catalog.dart';
import 'package:e_commerce/pages/home_detail_page.dart';
import 'package:e_commerce/widget/home_page/catalog_item.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:e_commerce/widget/themes.dart';



class CatalogList extends StatelessWidget {
  const CatalogList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return ListView.builder(
      itemCount: CatalogModel.item.length,
      itemBuilder: (context, index){
        final catalog = CatalogModel.item[index];

        return InkWell(
          onTap: ()=> Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context)=>HomeDetail(catalog:catalog),
            ),
          ),
          child: CatalogItem(catalog: catalog),
        );
      }
    );
  }
}













