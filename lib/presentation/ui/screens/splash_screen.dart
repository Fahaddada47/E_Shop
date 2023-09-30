import 'package:e_shop/presentation/ui/screens/auth/email_verification_screen.dart';
import 'package:e_shop/presentation/ui/screens/home_screen.dart';
import 'package:e_shop/presentation/ui/screens/main_bottom_nav_screen.dart';
import 'package:e_shop/presentation/ui/utility/images_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreeState();
}

class _SplashScreeState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    gotoNextScreen();
  }

  void gotoNextScreen() {
    Future.delayed(const Duration(seconds: 2)).then((value) {
      // Navigator.pushAndRemoveUntil(
      //     context,
      //     MaterialPageRoute(builder: (context) => HomeScreen()),
      //     (route) => false);
      Get.offAll(const MainBottomNavScreen( ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(),
          Center(
              child: SvgPicture.asset(
            ImageAssets.appLogo,
            width: 100,
          )),
          const Spacer(),
          const CircularProgressIndicator(),
          const SizedBox(height: 16),
          const Text('version 1.0.0'),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
