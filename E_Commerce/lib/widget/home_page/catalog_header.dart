import 'package:e_commerce/widget/themes.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CatalogHeader extends StatelessWidget {
  const CatalogHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          "Catalog App".text.xl4.bold.color(Mytheme.deepbluish).make(),
          "Trending Products".text.bold.color(Mytheme.deepbluish).make(),
        ],
      ).pOnly(top:10.0),
    );
  }
}
