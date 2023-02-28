import 'package:e_commerce/models/catalog.dart';
import 'package:e_commerce/widget/themes.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeDetail extends StatelessWidget {
  final Item catalog;
  const HomeDetail({Key? key, required this.catalog})
      : assert(catalog != null),
        super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Mytheme.creamColor,
        appBar: AppBar(title: "Product Details".text.bold.make()),
        bottomNavigationBar: Container(
          color: Colors.red,
          child: ButtonBar(),
        ),
        body: SafeArea(
          bottom: false,
          child: Column(
            children: [
              Hero(
                tag: Key(catalog.id.toString()),
                child: Image.network(catalog.image),
              ).h32(context).p12(),
              Expanded(
                  child: VxArc(
                height: 30.0,
                arcType: VxArcType.CONVEY,
                edge: VxEdge.TOP,
                child: Container(
                  color: Colors.white54,
                  width: context.screenWidth,
                  child: Column(
                    children: [
                      25.heightBox,
                      catalog.name.text.xl3.bold.make(),
                      catalog.desc.text.xl2.bold.make(),
                      20.heightBox,
                    ],
                  ),
                ),
              )),
            ],
          ),
        ));
  }
}
