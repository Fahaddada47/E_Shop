import 'package:e_shop/presentation/ui/utility/app_color.dart';
import 'package:flutter/material.dart';

class CatagoryCard extends StatelessWidget {
  const CatagoryCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 8),
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
                color: AppColor.primarycolor.withOpacity(0.1),
                borderRadius: BorderRadius.circular(8)
            ),
            child: Icon(Icons.shop,size: 40,color: AppColor.primarycolor,),
          ),
          const SizedBox(
            height: 8,
          ),
          Text('Electronic',
            style: TextStyle(
                fontSize: 14,
                color: AppColor.primarycolor,
                letterSpacing: 0.4
            ),)
        ],
      ),
    );
  }
}

