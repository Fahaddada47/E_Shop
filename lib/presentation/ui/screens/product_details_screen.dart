import 'package:e_shop/presentation/ui/screens/review_list_screen.dart';
import 'package:e_shop/presentation/ui/utility/app_color.dart';
import 'package:e_shop/presentation/ui/widgets/custom_stepper.dart';
import 'package:e_shop/presentation/ui/widgets/home/product_image_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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

  List<String> size = [
    'S',
    'M',
    'L',
    'XL',
    'XXL',
  ];

  int _selectedColorIndex = 0;
  int _selectedSizeIndex = 0;

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
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
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
                            onPressed: () {
                              Get.to(ReviewListScreen());
                            },
                            child: Text(
                              'Review',
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
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Colors',
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      SizedBox(
                        height: 28,
                        child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          itemCount: colors.length,
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
                                radius: 18,
                                backgroundColor: colors[index],
                                child: _selectedColorIndex == index
                                    ? const Icon(
                                        Icons.done,
                                        color: Colors.white,
                                      )
                                    : null,
                              ),
                            );
                          },
                          separatorBuilder: (BuildContext context, int index) {
                            return const SizedBox(
                              width: 8,
                            );
                          },
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Size',
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      SizedBox(
                        height: 28,
                        child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          itemCount: size.length,
                          itemBuilder: (context, index) {
                            return InkWell(
                              borderRadius: BorderRadius.circular(4),
                              onTap: () {
                                _selectedSizeIndex = index;
                                if (mounted) {
                                  setState(() {});
                                }
                              },
                              child: Container(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8),
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(4),
                                  color: _selectedSizeIndex == index
                                      ? AppColor.primarycolor
                                      : null,
                                ),
                                alignment: Alignment.center,
                                child: Text(
                                  size[index],
                                  style: TextStyle(
                                      color: _selectedSizeIndex == index
                                          ? Colors.white
                                          : Colors.black),
                                ),
                              ),
                            );
                          },
                          separatorBuilder: (BuildContext context, int index) {
                            return const SizedBox(
                              width: 8,
                            );
                          },
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Description',
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      const Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam vestibulum ex a libero cursus, ut hendrerit velit tristique. Maecenas commodo, felis eu commodo pellentesque, urna dolor curpis ligula ac mi. Sed auctor sollicitudin tellus, nec cursus velit consequat in. Vestibulum eget facilisis metus.')
                    ],
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              decoration: BoxDecoration(
                  color: AppColor.primarycolor.withOpacity(.1),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16),
                  )),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Price',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                            color: Colors.black45),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Text(
                        '\$1338',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                            color: AppColor.primarycolor),
                      ),
                    ],
                  ),
                  SizedBox(
                      width: 120,
                      child: ElevatedButton(
                          onPressed: () {}, child: const Text('Add To Cart')))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
