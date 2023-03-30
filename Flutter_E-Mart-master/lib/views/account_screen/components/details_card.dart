

import 'package:emart_app/consts/consts.dart';

Widget detailsCard({width, String? count, String? title}){
  return  Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      "00".text.fontFamily(bold).color(darkFontGrey).size(17).make(),
      5.heightBox,
      "in your cart".text.color(darkFontGrey).make(),
    ],
  ).box.white.rounded.width(width).height(70).padding(const EdgeInsets.all(5)).make();


}