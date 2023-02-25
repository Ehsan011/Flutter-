import 'package:e_commerce/models/catalog.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import '../themes.dart';


class CatalogImg extends StatelessWidget {
  final String img;
  const CatalogImg({Key? key, required this.img}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.network(img).box
        .rounded
        .p8
        .color(Mytheme.creamColor)
        .make()
        .py16()
        .w32(context);

  }
}
