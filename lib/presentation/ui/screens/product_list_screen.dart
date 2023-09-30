import 'package:e_shop/presentation/state_holders/main_bottom_nav_controller.dart';
import 'package:e_shop/presentation/ui/widgets/product_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductListScreen extends StatefulWidget {
  const ProductListScreen({super.key});

  @override
  State<ProductListScreen> createState() => _ProductListScreenState();
}

class _ProductListScreenState extends State<ProductListScreen> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: ()async {
        Get.find<MainBottomNavController>().backToHome();
        return false;
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: const Text(
            'Category',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          leading: const BackButton(
            color: Colors.black,
          ),
        ),
        body: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
            ),
            itemBuilder: (context, index) {
              return const FittedBox(
                child: ProductCard(),
              );
            }),


      ),
    );
  }
}
