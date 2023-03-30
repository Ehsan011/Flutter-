import 'package:emart_app/consts/consts.dart';
import 'package:emart_app/controller/home_controller.dart';
import 'package:emart_app/views/cart_screen/cart_screen.dart';
import 'package:emart_app/views/category_screen/category_screen.dart';
import 'package:emart_app/views/home_screen/home_screen.dart';
import 'package:emart_app/views/account_screen/profile_screen.dart';

class Home extends StatelessWidget {
  const Home ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(HomeController());

    var navbarItem = [
      BottomNavigationBarItem(icon: Image.asset(icHome, width: 26), label: home),
      BottomNavigationBarItem(icon: Image.asset(icCategories, width: 26), label: category),
      BottomNavigationBarItem(icon: Image.asset(icCart, width: 26), label: cart),
      BottomNavigationBarItem(icon: Image.asset(icProfile, width: 26), label: account),
    ];

    var navBody =[
     const HomeScreen(),
     const CategoryScreen(),
     const CartScreen(),
     const ProfileScreen(),
    ];

    return Scaffold(
      body: Column(
        children: [
          Obx(()=> Expanded(child: navBody.elementAt(controller.currentNavIndex.value))),
        ],
      ),
      bottomNavigationBar: Obx(
        ()=> BottomNavigationBar(
          currentIndex: controller.currentNavIndex.value,
          selectedItemColor: orangeColor,
          selectedLabelStyle:const TextStyle(fontFamily: semibold),
          type: BottomNavigationBarType.fixed,
            backgroundColor: whiteColor,
            items: navbarItem,
          onTap: (value){
            controller.currentNavIndex.value=value;
          },
        ),
      ),
    );
  }
}
