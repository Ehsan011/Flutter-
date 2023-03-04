import 'package:e_commerce/models/catalog.dart';
import 'package:e_commerce/widget/home_page/catalog_image.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:e_commerce/widget/themes.dart';



class CatalogItem extends StatelessWidget {

  final Item catalog;

  const CatalogItem({Key? key, required this.catalog})
      :assert(catalog!=null), super(key: key);

  @override
  Widget build(BuildContext context) {
    return VxBox(
      child: Row(
        children: [
          Hero(
            tag: Key(catalog.id.toString()),
            child: CatalogImage(image:catalog.image),
          ),
          Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
            children: [
              catalog.name.text.xl3.color(context.accentColor).bold.make(),
              catalog.desc.text.textStyle(context.captionStyle).make(),
              10.heightBox,
              ButtonBar(
                alignment: MainAxisAlignment.spaceBetween,
                buttonPadding: Vx.mOnly(right: 16),
                children: [
                  "Price \$ ${catalog.price}".text.xl3.bold.color(Colors.deepPurple).make(),
                  ElevatedButton(
                      onPressed: ()=>{
                        print(catalog.name)
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(
                          context.theme.buttonColor
                        ),
                        shape: MaterialStateProperty.all(StadiumBorder()),
                      ),
                      child: "Buy".text.make()
                  ),
                ]

              )
            ],
          ))
        ],
      )
    ).white.rounded.square(150).make().py16();

  }
}
