import 'package:emart_app/consts/consts.dart';
import 'package:emart_app/views/category_screen/category_details.dart';
import 'package:emart_app/widgets_comman/bg_widget.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return bgWidget(
        child: Scaffold(
      appBar: AppBar(
        title: category.text.fontFamily(bold).white.make(),
      ),
      body: Container(
        padding: const EdgeInsets.all(12),
        child: GridView.builder(
            shrinkWrap: true,
            itemCount: 9,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, mainAxisSpacing: 10, crossAxisSpacing: 10, mainAxisExtent: 200),
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Image.asset(categoriesImages[index], height: 120, width: 225, fit: BoxFit.cover,),
                  8.heightBox,
                  categoriesList[index].text.color(darkFontGrey).align(TextAlign.center).make()
                ],
              ).box.white.roundedSM.clip(Clip.antiAlias).outerShadowSm.padding(const EdgeInsets.all(5)).make().onTap(() {
                Get.to(()=> CategoryDetails(title: categoriesList[index]));
              });
            }),
      ),
    ));
  }
}
