import 'package:e_shop/presentation/state_holders/main_bottom_nav_controller.dart';
import 'package:e_shop/presentation/ui/screens/auth/complete_profile_screen.dart';
import 'package:e_shop/presentation/ui/screens/auth/wish_list_screen.dart';
import 'package:e_shop/presentation/ui/screens/category_list.dart';
import 'package:e_shop/presentation/ui/screens/home_screen.dart';
import 'package:e_shop/presentation/ui/screens/splash_screen.dart';
import 'package:e_shop/presentation/ui/utility/app_color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainBottomNavScreen extends StatefulWidget {
  const MainBottomNavScreen({super.key});

  @override
  State<MainBottomNavScreen> createState() => _MainBottomNavScreenState();
}

class _MainBottomNavScreenState extends State<MainBottomNavScreen> {

  final List<Widget> _screens = [
    const HomeScreen(),
    const CategoryListScreen(),
    const HomeScreen(),
    const WishListScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MainBottomNavController>(
        builder: (controller) {
          return Scaffold(
            body: _screens[controller.currentSelectIndex],
            bottomNavigationBar: BottomNavigationBar(
            currentIndex: controller.currentSelectIndex,
            onTap: controller.changeScreen,
            selectedItemColor: AppColor.primarycolor,
            unselectedItemColor: Colors.blueGrey,
            showUnselectedLabels: true,
            elevation: 4,

            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home_filled), label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.dashboard), label: 'Categories'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.shopping_basket), label: 'Cart'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.favorite_border), label: 'Wish List'),
            ],
          ),);
        }
    );
  }
}
