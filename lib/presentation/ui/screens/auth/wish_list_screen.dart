import 'package:e_shop/presentation/ui/widgets/product_card.dart';
import 'package:flutter/material.dart';

class WishListScreen extends StatefulWidget {
  const WishListScreen({super.key});

  @override
  State<WishListScreen> createState() => _WishListScreenState();
}

class _WishListScreenState extends State<WishListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'Wish List',
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


    );
  }
}
