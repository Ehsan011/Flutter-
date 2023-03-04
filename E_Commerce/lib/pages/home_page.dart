import 'dart:convert';

import 'package:e_commerce/models/catalog.dart';
import 'package:e_commerce/util/route.dart';
import 'package:e_commerce/widget/home_page/catalog_header.dart';
import 'package:e_commerce/widget/home_page/catalog_list.dart';
import 'package:e_commerce/widget/themes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import "package:velocity_x/velocity_x.dart";


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
    return Scaffold(floatingActionButton: FloatingActionButton(
      backgroundColor: Mytheme.lightbluish,
        onPressed:()=>Navigator.pushNamed(context, MyRoute.cartPageRoute),
        child: Icon(CupertinoIcons.cart),
      ),
      body: SafeArea(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              CatalogHeader(),

              if(CatalogModel.item!= null && CatalogModel.item.isNotEmpty)
                CatalogList().py16().expand()
              else
                CircularProgressIndicator().centered()
            ],
          ),

        ),
      )

    );
  }


}








//
// appBar: AppBar(
// title: Text("Products"),
// ),
// body: Padding(
// padding: const EdgeInsets.all(16.0),
// child: GridView.builder(
// gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
// crossAxisCount: 2,
// ),
// itemCount: CatalogModel.item.length,
// itemBuilder: (context, index){
// final it = CatalogModel.item[index];
//
// return Card(
// clipBehavior: Clip.antiAlias,
// shape: RoundedRectangleBorder(
// borderRadius: BorderRadius.circular(10),
//
// ),
// child: GridTile(
// header: Container(
// padding: EdgeInsets.all(12.0),
// decoration: BoxDecoration(
// color: Colors.lightGreen,
//
// ),
//
// child: Text(it.name,
// style: TextStyle(
// color: Colors.white,
//
// ),
// )
//
// ),
// child: Center(
// child: Image.network(it.image,
// fit: BoxFit.cover,
// height: 100,
//
// ),
// ),
// footer: Padding(
// padding: const EdgeInsets.only(bottom: 15),
// child: Center(
// child: Text("Price: \$ ${it.price.toString()}",
// style: TextStyle(
// color: Colors.deepPurple,
// fontWeight: FontWeight.bold,
// ),
// ),
//
//
// ),
// ),
//
//
//
// ),
//
//
//
//
// );
// }
//
// )
//
//
// // ListView.builder(
// //   itemCount: CatalogModel.item.length,
// //     itemBuilder: (context, index){
// //     return ItemWidget(
// //       item: CatalogModel.item[index],
// //     );
// //     }
// // ),
// ),
//
//
// drawer: MyDrawer(),