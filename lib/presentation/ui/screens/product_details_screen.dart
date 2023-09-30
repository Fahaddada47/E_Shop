import 'package:e_shop/presentation/ui/utility/app_color.dart';
import 'package:e_shop/presentation/ui/widgets/custom_stepper.dart';
import 'package:e_shop/presentation/ui/widgets/home/product_image_slider.dart';
import 'package:flutter/material.dart';

class ProductDetailsScreen extends StatefulWidget {
  const ProductDetailsScreen({super.key});

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  List<Color> colors = [
    Colors.red,
    Colors.blue,
    Colors.amber,
    Colors.orange,
    Colors.pink,
  ];

  int _selectedColorIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              children: [
                const ProductImageSlider(),
                AppBar(
                  leading: const BackButton(
                    color: Colors.black54,
                  ),
                  title: const Text(
                    'Product Details',
                    style: TextStyle(color: Colors.black54),
                  ),
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Addidas Shoe mk54612v',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            letterSpacing: .5),
                      ),
                      CustomStepper(
                          lowerLimit: 1,
                          upperLimit: 10,
                          stepValue: 1,
                          value: 1,
                          onChange: (newValue) {
                            print(newValue);
                          })
                    ],
                  ),
                  Row(
                    children: [
                      const Wrap(
                        crossAxisAlignment: WrapCrossAlignment.center,
                        children: [
                          Icon(
                            Icons.star,
                            size: 18,
                            color: Colors.amber,
                          ),
                          Text(
                            '4.5',
                            style: TextStyle(
                                overflow: TextOverflow.ellipsis,
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Colors.blueGrey),
                          ),
                        ],
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Reviwe',
                          style: TextStyle(
                              fontSize: 15,
                              color: AppColor.primarycolor,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      Card(
                        color: AppColor.primarycolor,
                        child: const Padding(
                          padding: EdgeInsets.all(2.0),
                          child: Icon(
                            Icons.favorite_border,
                            size: 16,
                            color: Colors.white,
                          ),
                        ),
                      )
                    ],
                  ),
                  const Text(
                    'Colors',
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  SizedBox(
                    height: 30,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return InkWell(
                            borderRadius: BorderRadius.circular(20),
                            onTap: () {
                              _selectedColorIndex = index;
                              if (mounted) {
                                setState(() {});
                              }
                            },
                            child: CircleAvatar(
                              backgroundColor: colors[index],
                              child: _selectedColorIndex == index
                                  ? Icon(
                                      Icons.done,
                                      color: AppColor.primarycolor,
                                    )
                                  : null,
                            ),
                          );
                        }),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
