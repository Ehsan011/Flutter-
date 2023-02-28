import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../themes.dart';

class CatalogHeader extends StatelessWidget {
  const CatalogHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          "Catalog App".text.bold.xl4.color(Mytheme.deepBlush).make(),
          "Trending Products".text.bold.color(Mytheme.deepBlush).make(),
        ],
      ).pOnly(top: 8.0),
    );
  }
}
