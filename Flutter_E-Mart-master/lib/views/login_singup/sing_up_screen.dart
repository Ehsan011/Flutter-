import 'package:emart_app/widgets_comman/applogo_widgats.dart';
import 'package:emart_app/widgets_comman/bg_widget.dart';
import 'package:emart_app/widgets_comman/custom_textfield.dart';
import 'package:emart_app/widgets_comman/our_button.dart';

import '/consts/consts.dart';

class SingUpScreen extends StatefulWidget {
  const SingUpScreen({Key? key}) : super(key: key);

  @override
  State<SingUpScreen> createState() => _SingUpScreenState();
}

class _SingUpScreenState extends State<SingUpScreen> {
  bool? isCheck = false;
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
          10.heightBox,
          "Join the $appname".text.fontFamily(bold).white.size(20).make(),
          15.heightBox,
          Column(
            children: [
              customTextField(hint: nameHint, title: name),
              customTextField(hint: emailHint, title: email),
              customTextField(hint: passwordHint, title: password),
              customTextField(hint: passwordHint, title: retypePass),
              Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                      onPressed: () {}, child: forgetPass.text.make())),
              5.heightBox,
              //Check Box Start
              Row(
                children: [
                  Checkbox(
                      activeColor: orangeColor,
                      checkColor: Colors.white,
                      value: isCheck,
                      onChanged: (newValue) {
                        setState(() {
                          isCheck = newValue;
                        });
                      },
                  ),
                  Expanded(
                    child: RichText(text: const TextSpan(
                      children: [
                        TextSpan(text: "I agree to the ",
                            style: TextStyle(fontFamily: regular, color: fontGrey,
                            )),
                        TextSpan(text: termAndCond,
                            style: TextStyle(
                              fontFamily: regular, color: orangeColor,
                            )),
                        TextSpan(text: " & ",
                            style: TextStyle(
                              fontFamily: regular, color: orangeColor,
                            )),
                        TextSpan(text: privacyPolicy,
                            style: TextStyle(
                              fontFamily: regular, color: orangeColor,
                            ))
                      ],
                    )),
                  ),
                ],
              ),
              8.heightBox,

              //Button show with condition
              ourButton(
                  color: isCheck==true? orangeColor:lightGrey, title: singUp, textColor: whiteColor,
                  onPress: () {}).box
                  .width(context.screenWidth - 45)
                  .make(),
              6.heightBox,
//Wrapping into gesture detector of velocity X
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   alHaveAccount.text.color(fontGrey).make(),
//                   login.text.color(orangeColor).make().onTap(() {
//                     Get.back();
//                   })
//                 ],
//               ),


              GestureDetector(
                child: RichText(text:const TextSpan(
                  children: [
                    TextSpan(
                        text: alHaveAccount,
                      style: TextStyle(
                        fontFamily: regular,
                        color: fontGrey,
                      )
                    ),
                    TextSpan(
                        text: " ",
                        style: TextStyle(
                          fontFamily: bold,
                          color: fontGrey,
                        )
                    ),
                    TextSpan(
                        text: login,
                        style: TextStyle(
                          fontFamily: bold,
                          color: orangeColor,
                        )
                    )
                  ]
                ),
                ).onTap(() {
                  Get.back();
                }),
              ),
            ],
              ).box.white.rounded
                  .padding(const EdgeInsets.all(15))
                  .width(context.screenWidth - 60)
                  .shadowSm
                  .make(),
            ],
          ),
      ),
    ));
  }
}