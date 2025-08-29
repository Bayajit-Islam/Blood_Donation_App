import 'package:blood_donation_app/core/app_routes/app_routes.dart';
import 'package:blood_donation_app/utils/app_colors/app_colors.dart';
import 'package:blood_donation_app/utils/static_string/app_string.dart';
import 'package:blood_donation_app/view/widget/custome_text/customer_text.dart';
import 'package:blood_donation_app/view/widget/customer_button/customer_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChoiceTypeScreen extends StatelessWidget {
  const ChoiceTypeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 37.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //<========== Please select the one applicable to you  ==========>
              CustomeText(
                text: AppString.applicableToYou,
                fontSize: 13,
                fontWeight: FontWeight.w700,
              ),

              //<========== Health Worker Button ==========>
              SizedBox(height: 122),
              CustomerButton(
                buttonText: AppString.healthWorker,
                textColor: AppColors.brand,
                bgColor: AppColors.background,
                onTap: () {
                  //<========== Route Here ==========>
                  Get.toNamed(AppRoute.loginScreen);
                },
              ),

              //<========== Donor Button ==========>
              SizedBox(height: 19),
              CustomerButton(
                buttonText: AppString.donor,
                textColor: AppColors.secandaryColor,
                bgColor: AppColors.brand,
                onTap: () {
                  //<========== Route Here ==========>
                  Get.toNamed(AppRoute.loginScreen);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
