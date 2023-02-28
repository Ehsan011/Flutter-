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
    final demoText="Firebase is a set of hosting services for any type of application. It offers NoSQL and real-time hosting of databases, content, social authentication, and notifications, or services, such as a real-time communication server";
    return Scaffold(
        backgroundColor: Mytheme.creamColor,
        appBar: AppBar(title: "Product Details".text.bold.make()),
        bottomNavigationBar: Container(
          color: Colors.green,
          child: ButtonBar(
            alignment: MainAxisAlignment.spaceAround,
             buttonPadding: Vx.mOnly(right: 16),
            children: [
              "Price \$ ${catalog.price}".text.xl3.white.make(),

              ElevatedButton(
                  onPressed: ()=>{

                  },
                style:ButtonStyle(shape: MaterialStatePropertyAll(StadiumBorder()),
                ),
                  child: "Add to Cart".text.bold.color(Colors.white).make(),
              )
            ],
          ),
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
                      30.heightBox,
                      catalog.name.text.xl3.bold.make(),
                      catalog.desc.text.xl.textStyle(context.captionStyle).make(),
                      15.heightBox,
                      demoText.text.make().p16(),
                    ],
                  ),
                ),
              )),
            ],
          ),
        ));
  }
}
