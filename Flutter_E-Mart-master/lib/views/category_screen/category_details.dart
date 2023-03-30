import 'package:emart_app/consts/consts.dart';
import 'package:emart_app/views/category_screen/item_details.dart';
import 'package:emart_app/widgets_comman/bg_widget.dart';

class CategoryDetails extends StatelessWidget {
  final String? title;

  const CategoryDetails({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return bgWidget(
      child: Scaffold(
        appBar: AppBar(
          title: title!.text.fontFamily(bold).white.make(),
        ),
        body: Container(
          padding: EdgeInsets.all(12),
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                    children: List.generate(
                        6,
                        (index) => "Baby Clothing"
                            .text
                            .size(15)
                            .fontFamily(semibold)
                            .color(darkFontGrey)
                            .makeCentered()
                            .box
                            .white
                            .roundedSM
                            .margin(const EdgeInsets.symmetric(
                                horizontal: 4, vertical: 10))
                            .size(130, 60)
                            .make())),
              ),
              10.heightBox,
              //   items container
              Expanded(
                  child: GridView.builder(
                    physics:const BouncingScrollPhysics(),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2, mainAxisExtent: 250, mainAxisSpacing: 8, crossAxisSpacing: 8),
                      itemBuilder: (context, index) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(imgP5,
                                width: 150, height: 180, fit: BoxFit.cover),
                            "Leptop 8GB/256GB"
                                .text
                                .fontFamily(semibold)
                                .color(darkFontGrey)
                                .make(),
                            5.heightBox,
                            "\$220"
                                .text.size(15)
                                .fontFamily(bold)
                                .color(orangeColor)
                                .make(),
                          ],
                        )
                            .box
                            .white
                            .roundedSM.outerShadowSm
                            .padding(const EdgeInsets.all(10))
                            .margin(const EdgeInsets.all(5))
                            .make().onTap(() {
                              Get.to(()=>
                              const ItemDetails(title: "Dummy item Name"));
                            });
                      }))
            ],
          ),
        ),
      ),
    );
  }
}
