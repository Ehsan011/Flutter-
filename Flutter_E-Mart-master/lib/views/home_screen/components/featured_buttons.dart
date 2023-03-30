import 'package:emart_app/consts/consts.dart';

Widget featuredButtons({String? title, icon}) {
  return Row(
    children: [
      Image.asset(icon, width: 80, fit: BoxFit.fill),
      10.widthBox,
      title!.text.fontFamily(semibold).color(darkFontGrey).make(),
    ],
  )
      .box
      .width(260)
      .margin(const EdgeInsets.symmetric(horizontal: 5))
      .white
      .padding(const EdgeInsets.all(10))
      .roundedSM
      .outerShadowMd
      .make();
}
