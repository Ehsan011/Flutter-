import 'package:emart_app/consts/consts.dart';
import 'package:emart_app/views/account_screen/components/details_card.dart';
import 'package:emart_app/widgets_comman/bg_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return bgWidget(
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: const Align(
                        alignment: Alignment.topRight,
                        child: Icon(Icons.edit, color: Colors.white))
                    .onTap(() {}),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  children: [
                    Image.asset(imgProfile2, width: 90, fit: BoxFit.cover)
                        .box
                        .roundedFull
                        .clip(Clip.antiAlias)
                        .make(),
                    10.heightBox,
                    Expanded(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        "USER NAME"
                            .text
                            .fontFamily(semibold)
                            .color(Colors.white)
                            .size(13)
                            .make(),
                        "userperson@gmail.com"
                            .text
                            .fontFamily(semibold)
                            .color(Colors.white)
                            .size(13)
                            .make(),
                      ],
                    )),
                    OutlinedButton(
                        style: OutlinedButton.styleFrom(
                            side: const BorderSide(
                          color: Colors.white,
                          style: BorderStyle.solid,
                        )),
                        onPressed: () {},
                        child: logout.text
                            .fontFamily(semibold)
                            .white
                            .size(15)
                            .make()),
                  ],
                ),
              ),

              20.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  detailsCard(
                      count: "00",
                      title: "in your cart",
                      width: context.screenWidth / 3.6),
                  detailsCard(
                      count: "32",
                      title: "in your wishlist",
                      width: context.screenWidth / 3.6),
                  detailsCard(
                      count: "575",
                      title: "your orders",
                      width: context.screenWidth / 3.6),
                ],
              ),
              //  Button Section
              ListView.separated(
                shrinkWrap: true,
                  separatorBuilder: (context, index){
                    return const Divider(
                      color: lightGrey,
                    );
                  },
                  itemCount: profileButtonsList.length,
              itemBuilder: (BuildContext context, int index){
                    return ListTile(
                      leading: Image.asset(profileButtonsIcon[index],
                      width: 24,
                      ),
                      title: profileButtonsList[index].text.fontFamily(bold).color(darkFontGrey).make(),
                    );
              },
              ).box.white.padding(const EdgeInsets.all(8)).margin(const EdgeInsets.all(12)).roundedSM.shadow.make().box.color(orangeColor).make(),
            ],
          ),
        ),
      ),
    );
  }
}
