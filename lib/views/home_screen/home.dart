import 'package:emart_seller/const/const.dart';
import 'package:emart_seller/const/images.dart';
import 'package:emart_seller/const/strings.dart';
import 'package:emart_seller/controllers/home_controller.dart';
import 'package:emart_seller/views/auth_screen/widgets/text_style.dart';
import 'package:emart_seller/views/home_screen/home_screen.dart';
import 'package:emart_seller/views/orders_screen/orders_screen.dart';
import 'package:emart_seller/views/producst_screen/products_screens.dart';
import 'package:emart_seller/views/profile_screen/profile_screen.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(HomeController());
    var navScreens = [
      const HomeScreen(),
      const ProductsScreens(),
      const OrdersScreen(),
      const ProfileScreen()
    ];
    var bottomNavbar = [
      const BottomNavigationBarItem(icon: Icon(Icons.home), label: dashboard),
      BottomNavigationBarItem(
          icon: Image.asset(
            icProducts,
            color: darkGrey,
            width: 24,
          ),
          label: products),
      BottomNavigationBarItem(
          icon: Image.asset(
            icOrders,
            width: 24,
            color: darkGrey,
          ),
          label: orders),
      BottomNavigationBarItem(
          icon: Image.asset(
            icGenerateSettings,
            width: 24,
            color: darkGrey,
          ),
          label: settings),
    ];
    return Scaffold(
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
            onTap: (index) {
              controller.navIndex.value = index;
            },
            currentIndex: controller.navIndex.value,
            type: BottomNavigationBarType.fixed,
            selectedItemColor: purpleColor,
            unselectedItemColor: darkGrey,
            items: bottomNavbar),
      ),
      body: Obx(
        () => Column(
          children: [
            Expanded(child: navScreens.elementAt(controller.navIndex.value)),
          ],
        ),
      ),
    );
  }
}
