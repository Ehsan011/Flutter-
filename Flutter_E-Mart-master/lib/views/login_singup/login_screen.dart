import 'package:emart_app/consts/list.dart';
import 'package:emart_app/views/home_screen/Home.dart';
import 'package:emart_app/views/login_singup/sing_up_screen.dart';
import 'package:emart_app/widgets_comman/applogo_widgats.dart';
import 'package:emart_app/widgets_comman/bg_widget.dart';
import 'package:emart_app/widgets_comman/custom_textfield.dart';
import 'package:emart_app/widgets_comman/our_button.dart';

import '/consts/consts.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return bgWidget(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(
          children: [
            (context.screenHeight * 0.1).heightBox,
            applogoWidget(),
            8.heightBox,
            "Log in to $appname".text.fontFamily(bold).white.size(20).make(),
            15.heightBox,
            Column(
              children: [
                customTextField(hint: emailHint, title: email),
                customTextField(hint: passwordHint, title: password),
                Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                        onPressed: () {}, child: forgetPass.text.make())),
                7.heightBox,
                ourButton(
                        color: orangeColor,
                        title: login,
                        textColor: whiteColor,
                        onPress: () {
                          Get.to(() =>const Home());
                        }).box
                    .width(context.screenWidth - 45)
                    .make(),
                7.heightBox,
                createNewAccount.text.color(fontGrey).make(),
                7.heightBox,
                ourButton(
                    color: cornSilk,
                    title: singUp,
                    textColor: orangeColor,
                    onPress: () {
                      Get.to(()=>const SingUpScreen());
                    })
                    .box
                    .width(context.screenWidth - 45)
                    .make(),
                7.heightBox,
                loginWith.text.color(fontGrey).make(),
                7.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:
                    List.generate(
                        3,
                            (index) => Padding(
                              padding: const EdgeInsets.all(6.0),
                              child: CircleAvatar(
                                radius: 25,
                      backgroundColor: lightGrey,
                      child: Image.asset(socialIconList[index]),
                    ),
                            )),
                ),
              ],
            )
                .box
                .white
                .rounded
                .padding(const EdgeInsets.all(15))
                .width(context.screenWidth - 60).shadowSm
                .make(),
          ],
        ),
      ),
    ));
  }
}
