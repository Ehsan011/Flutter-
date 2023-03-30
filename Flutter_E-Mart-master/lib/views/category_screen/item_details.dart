import 'package:emart_app/consts/consts.dart';
import 'package:emart_app/widgets_comman/our_button.dart';

class ItemDetails extends StatelessWidget {
  final String? title;

  const ItemDetails({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightGrey,
      appBar: AppBar(
        title: title!.text.color(darkFontGrey).fontFamily(bold).make(),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.share)),
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.favorite_outline)),
        ],
      ),
      body: Column(
        children: [
          Expanded(
              child: Container(
            padding: const EdgeInsets.all(8),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //  swiper section
                  VxSwiper.builder(
                      autoPlay: true,
                      height: 350,
                      itemCount: 3,
                      aspectRatio: 16 / 9,
                      itemBuilder: (context, index) {
                        return Image.asset(imgFc5,
                            width: double.infinity, fit: BoxFit.cover);
                      }),
                  //  title and details section
                  10.heightBox,
                  title!.text
                      .size(16)
                      .color(darkFontGrey)
                      .fontFamily(semibold)
                      .make(),
                  //  Rating
                  10.heightBox,

                  VxRating(
                      onRatingUpdate: (value) {},
                      normalColor: textfieldGrey,
                      selectionColor: golden,
                      count: 5,
                      size: 25,
                      stepInt: true),

                  //  Price
                  10.heightBox,
                  "\$30,00"
                      .text
                      .color(orangeColor)
                      .fontFamily(bold)
                      .size(18)
                      .make(),
                  10.heightBox,
                  Row(
                    children: [
                      Expanded(
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          "Seller".text.make(),
                          5.heightBox,
                          "In House Brand"
                              .text
                              .fontFamily(semibold)
                              .color(darkFontGrey)
                              .size(16)
                              .make(),
                        ],
                      )),
                      const CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Icon(Icons.message_rounded, color: darkFontGrey),
                      ),
                    ],
                  )
                      .box
                      .height(60)
                      .padding(const EdgeInsets.symmetric(horizontal: 16))
                      .color(textfieldGrey)
                      .make(),
                  5.heightBox,
                  Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: 100,
                            child: "Color: ".text.color(textfieldGrey).make(),
                          ),
                          Row(
                            children: List.generate(
                              3,
                                  (index) => VxBox()
                                  .size(40, 40)
                                  .roundedFull
                                  .color(Vx.randomPrimaryColor)
                                  .margin(const EdgeInsets.symmetric(
                                  horizontal: 5))
                                  .make()),
                          ),
                        ],
                      ).box.padding(const EdgeInsets.all(8)).make(),
                      5.heightBox,
                      Row(
                        children: [
                          SizedBox(
                            width: 100,
                            child: "Quantity: ".text.color(textfieldGrey).make(),
                          ),
                          Row(
                            children: [
                              IconButton(onPressed: (){}, icon:const Icon(Icons.remove)),
                              "0".text.size(16).color(darkFontGrey).fontFamily(bold).make(),
                              IconButton(onPressed: (){}, icon:const Icon(Icons.add)),
                            ],
                          ),
                        ],
                      ).box.padding(const EdgeInsets.all(8)).make(),
                      // Price section
                      5.heightBox,
                      Row(
                        children: [
                          SizedBox(
                            width: 100,
                            child: "Total: ".text.color(textfieldGrey).make(),
                          ),
                          "\$0.00".text.color(orangeColor).size(18).fontFamily(bold).make(),
                        ],
                      ).box.padding(const EdgeInsets.all(8)).make(),
                    ],
                  ).box.white.shadowSm.make(),
                //  description
                  10.heightBox,
                  "Description".text.color(darkFontGrey).fontFamily(semibold).make(),
                  5.heightBox,
                  "This is for dummy item description..... This is for dummy item description....".text.color(darkFontGrey).fontFamily(semibold).make(),
                  // Buttons section
                  ListView(
                    physics:const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    children: List.generate(itemDetailButtonsList.length, (index) => ListTile(
                      title: itemDetailButtonsList[index].text.fontFamily(semibold).color(darkFontGrey).make(),
                      trailing:const Icon(Icons.arrow_forward),
                    ),),
                  ),
                  20.heightBox,
                  productlike.text.fontFamily(bold).size(17).color(darkFontGrey).make(),
                  10.heightBox,
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(
                          6,
                              (index) => Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(imgP1, width: 150, fit: BoxFit.cover),
                              5.heightBox,
                              "Leptop 8GB/256GB".text.fontFamily(semibold).color(darkFontGrey).make(),
                              5.heightBox,
                              "\$650".text.fontFamily(bold).color(orangeColor).make(),
                            ],
                          )
                              .box
                              .white
                              .rounded
                              .padding(const EdgeInsets.all(10)).margin(const EdgeInsets.all(5))
                              .make()
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )),
          SizedBox(
            width: double.infinity,
            height: 60,
            child: ourButton(
              color: orangeColor,
              onPress: () {},
              textColor: whiteColor,
              title: "Add to cart",
            ),
          ),
        ],
      ),
    );
  }
}
