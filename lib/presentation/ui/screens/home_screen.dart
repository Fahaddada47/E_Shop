import 'package:e_shop/presentation/ui/utility/app_color.dart';
import 'package:e_shop/presentation/ui/utility/images_assets.dart';
import 'package:e_shop/presentation/ui/widgets/catagory_card.dart';
import 'package:e_shop/presentation/ui/widgets/circular_icon_button.dart';
import 'package:e_shop/presentation/ui/widgets/home/home_slider.dart';
import 'package:e_shop/presentation/ui/widgets/home/section_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Row(
            children: [
              const SizedBox(
                height: 38,
              ),
              SvgPicture.asset(ImageAssets.appbarlogo),
              const Spacer(),
              CircularIconButton(icon: Icons.person, onTap: () {}),
              const SizedBox(
                width: 8,
              ),
              CircularIconButton(icon: Icons.call, onTap: () {}),
              const SizedBox(
                width: 8,
              ),
              CircularIconButton(icon: Icons.notifications_none, onTap: () {}),
            ],
          )),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  fillColor: Colors.grey.shade200,
                  filled: true,
                  prefixIcon: const Icon(Icons.search),
                  hintText: 'Search',
                  border: const OutlineInputBorder(borderSide: BorderSide.none),
                  focusedBorder:
                      const OutlineInputBorder(borderSide: BorderSide.none),
                  enabledBorder:
                      const OutlineInputBorder(borderSide: BorderSide.none),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const HomeSlider(),
              SectionHeader(
                title: 'Catagories',
                onTap:(){},
              ),
              SizedBox(
                height: 90,
                child: ListView.builder(
                    itemCount: 10,
          scrollDirection: Axis.horizontal,
                    itemBuilder: (context,index){
                      return CatagoryCard();
                    }),
              ),
              const SizedBox(
                height: 16,
              ),
              SectionHeader(title: 'Popular',
                onTap: (){},)
            ],
          ),
        ),
      ),
    );
  }
}

