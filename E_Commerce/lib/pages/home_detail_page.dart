import 'package:e_commerce/models/catalog.dart';
import 'package:e_commerce/widget/themes.dart';
import 'package:flutter/material.dart';
import "package:velocity_x/velocity_x.dart";

class HomeDetail extends StatelessWidget {
  final Item catalog;
  const HomeDetail({Key? key, required this.catalog})
      :assert(catalog !=null),
       super(key: key);

  @override
  Widget build(BuildContext context) {
    String demotext="Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.";
    return Scaffold(
      backgroundColor: context.canvasColor,
      appBar: AppBar(
        title: "Product Detail".text.bold.make(),
      ),
      bottomNavigationBar: Container(
        color: Colors.deepPurple,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
            buttonPadding: Vx.mOnly(right: 16),
          children: [
            "Price \$ ${catalog.price}".text.xl2.white.make(),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.pink,
              ),
                onPressed: ()=>{

                },
              // style: ButtonStyle(
              //   shape: MaterialStateProperty.all(StadiumBorder()),
              // ),
                child: "Add to Cart".text.make(),
            ),
          ],

        ).p16(),
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
                  color: Colors.white,
                  width: context.screenWidth,
                  child: Column(
                    children: [
                      30.heightBox,
                      catalog.name.text.xl4.bold.make(),
                      catalog.desc.text.xl
                          .textStyle(context.captionStyle).make(),
                      10.heightBox,
                      demotext.text.make().p16(),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      )
    );
  }
}
