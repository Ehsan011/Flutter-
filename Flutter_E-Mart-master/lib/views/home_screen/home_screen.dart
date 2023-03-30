import 'package:emart_app/consts/consts.dart';
import 'package:emart_app/views/home_screen/components/featured_buttons.dart';
import 'package:emart_app/widgets_comman/home_buttons.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14),
      color: lightGrey,
      width: context.screenWidth,
      height: context.screenHeight,
      child: SafeArea(
          child: Column(
        children: [
          //set search
          Container(
            alignment: Alignment.center,
            height: 62,
            color: lightGrey,
            child: TextFormField(
              decoration: const InputDecoration(
                  border: InputBorder.none,
                  suffixIcon: Icon(Icons.search),
                  filled: true,
                  fillColor: whiteColor,
                  hintText: searchany,
                  hintStyle: TextStyle(color: textfieldGrey)),
            ),
          ),
          10.heightBox,
          Expanded(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  VxSwiper.builder(
                      aspectRatio: 16 / 9,
                      autoPlay: true,
                      height: 150,
                      enlargeCenterPage: true,
                      itemCount: sliderimg.length,
                      itemBuilder: (context, index) {
                        return Image.asset(
                          sliderimg[index],
                          fit: BoxFit.fill,
                        )
                            .box
                            .rounded
                            .clip(Clip.antiAlias)
                            .margin(const EdgeInsets.symmetric(horizontal: 8))
                            .make();
                      }),
                  //  deals Buttons
                  10.heightBox,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: List.generate(
                        2,
                        (index) => homeButtons(
                              height: context.screenHeight * 0.15,
                              width: context.screenWidth * 0.40,
                              icon: index == 0 ? icTodaysDeal : icFlashDeal,
                              title: index == 0 ? todayDeal : flashsale,
                              // onPress,
                            )),
                  ),
                  10.heightBox,
                  //2nd Slider brands
                  VxSwiper.builder(
                      aspectRatio: 16 / 9,
                      autoPlay: true,
                      height: 150,
                      enlargeCenterPage: true,
                      itemCount: sliderimg.length,
                      itemBuilder: (context, index) {
                        return Image.asset(
                          secondslider[index],
                          fit: BoxFit.fill,
                        )
                            .box
                            .rounded
                            .clip(Clip.antiAlias)
                            .margin(const EdgeInsets.symmetric(horizontal: 8))
                            .make();
                      }),

                  10.heightBox,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: List.generate(
                        3,
                        (index) => homeButtons(
                              height: context.screenHeight * 0.15,
                              width: context.screenWidth * 0.30,
                              icon: index == 0
                                  ? icTopCategories
                                  : index == 1
                                      ? icBrands
                                      : icTopSeller,
                              title: index == 0
                                  ? topCategories
                                  : index == 1
                                      ? brand
                                      : topSellers,
                              // onPress,
                            )),
                  ),
                  20.heightBox,
                  //  featured categories
                  Align(
                    alignment: Alignment.centerLeft,
                    child: featuredCategories.text
                        .color(darkFontGrey)
                        .size(18)
                        .fontFamily(semibold)
                        .make(),
                  ),
                  20.heightBox,
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(
                          3,
                          (index) => Column(
                                children: [
                                  featuredButtons(
                                      icon: featuredImages1[index],
                                      title: featuredTitle1[index]),
                                  10.heightBox,
                                  featuredButtons(
                                      icon: featuredImages2[index],
                                      title: featuredTitle2[index]),
                                ],
                              )),
                    ),
                  ),
                  //  featured product
                  20.heightBox,
                  Container(
                    padding: const EdgeInsets.all(10),
                    width: double.infinity,
                    decoration: const BoxDecoration(color: orangeColor),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        featuredProduct.text.white
                            .fontFamily(bold)
                            .size(20)
                            .make(),
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

                //  3rd swiper
                  20.heightBox,
                  VxSwiper.builder(
                      aspectRatio: 16 / 9,
                      autoPlay: true,
                      height: 150,
                      enlargeCenterPage: true,
                      itemCount: sliderimg.length,
                      itemBuilder: (context, index) {
                        return Image.asset(
                          secondslider[index],
                          fit: BoxFit.fill,
                        )
                            .box
                            .rounded
                            .clip(Clip.antiAlias)
                            .margin(const EdgeInsets.symmetric(horizontal: 8))
                            .make();
                      }),

                //  all products section
                  20.heightBox,
                  GridView.builder(
                    physics:const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                      itemCount: 8,
                      gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, mainAxisSpacing: 8, crossAxisSpacing: 8, mainAxisExtent: 300),
                      itemBuilder: (context, index){
                        return Column(

                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                                imgP5, width: 200, height: 200, fit: BoxFit.cover),
                            const Spacer(),
                            5.heightBox,
                            "Leptop 8GB/256GB".text.fontFamily(semibold).color(darkFontGrey).make(),
                            5.heightBox,
                            "\$220".text.fontFamily(bold).color(orangeColor).make(),
                          ],
                        )
                            .box
                            .white
                            .rounded
                            .padding(const EdgeInsets.all(10)).margin(const EdgeInsets.all(5))
                            .make();
                      }),
                ],
              ),
            ),
          )
          //  swiper brands set
        ],
      )),
    );
  }
}
