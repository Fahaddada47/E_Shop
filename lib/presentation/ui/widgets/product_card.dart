import 'package:e_shop/presentation/ui/screens/product_details_screen.dart';
import 'package:e_shop/presentation/ui/utility/app_color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(8),
      onTap:(){
        Get.to(const ProductDetailsScreen());
      },
      child: Card(
        shadowColor: AppColor.primarycolor.withOpacity(0.1),
        elevation: 4,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        child: SizedBox(
          width: 130,
          child: Column(
            children: [
              Container(
                height: 100,
                decoration: BoxDecoration(
                    color: AppColor.primarycolor.withOpacity(0.1),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(8),
                      topRight: Radius.circular(8),
                    ),
                    image: const DecorationImage(
                        image: NetworkImage(
                            'https://clipart-library.com/images_k/shoe-transparent-background/shoe-transparent-background-19.png'))),
              ),
               Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    const Text(
                      'Nike shoe AK50459049',
                      maxLines: 1,
                      style: TextStyle(
                          overflow: TextOverflow.ellipsis,
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Colors.blueGrey),
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '\$90',
                          style: TextStyle(
                              fontSize: 13,
                              color:AppColor.primarycolor,
                              fontWeight: FontWeight.w500),
                        ),
                        const Wrap(
                          crossAxisAlignment: WrapCrossAlignment.center,
                          children: [
                            Icon(
                              Icons.star,
                              size: 15,
                              color: Colors.amber,
                            ),
                            Text(
                              '4.5',
                              style: TextStyle(
                                  overflow: TextOverflow.ellipsis,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.blueGrey),
                            ),
                          ],
                        ),
                        Card(
                          color: AppColor.primarycolor,
                          child: const Padding(
                            padding: EdgeInsets.all(2.0),
                            child: Icon(
                              Icons.favorite_border,
                              size: 12,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}