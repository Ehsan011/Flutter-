import 'package:emart_app/views/login_singup/login_screen.dart';
import 'package:emart_app/widgets_comman/applogo_widgats.dart';
import '/consts/consts.dart';
import 'package:get/get.dart';


  class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  //  creating a method to change  screen
  changeScreen(){
    Future.delayed(const Duration(seconds: 4), (){
    //  using getX
      Get.to(()=>const LoginScreen());
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    changeScreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: orangeColor,
      body: Center(
        child: Column(
            children: [Align(alignment: Alignment.topLeft, child:Image.asset(icSplashBg, width: 300)),
            20.heightBox,
            applogoWidget(),
              10.heightBox,
              appname.text.fontFamily(bold).size(23).white.make(),
              5.heightBox,
              appversion.text.white.make(),
              Spacer(),
              credits.text.white.fontFamily(semibold).make(),
              20.heightBox,
          ],
        ),
      ),
    );
  }
}
