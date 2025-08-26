import 'package:blood_donation_app/utils/app_colors/app_colors.dart';
import 'package:blood_donation_app/utils/static_string/app_string.dart';
import 'package:blood_donation_app/view/screen/splash_screen/splash_controller/splash_controller.dart';
import 'package:blood_donation_app/view/widget/custome_text/customer_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});

  final SplashController splashController = Get.put(SplashController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Center(
        child: CustomeText(
          text: AppString.wellcome,
          fontSize: 40,
          color: AppColors.brand,
          fontWeight: FontWeight.w400,
          fontFamily: "inter",
        ),
      ),
    );
  }
}
