import 'package:blood_donation_app/core/app_routes/app_routes.dart';
import 'package:blood_donation_app/utils/app_colors/app_colors.dart';
import 'package:blood_donation_app/utils/static_string/app_string.dart';
import 'package:blood_donation_app/view/widget/custome_text/customer_text.dart';
import 'package:blood_donation_app/view/widget/custome_textfield/custome_textfield.dart';
import 'package:blood_donation_app/view/widget/customer_button/customer_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupScreen extends StatelessWidget {
  SignupScreen({super.key});

  //<==========  FullName  Controller  ==========>
  final TextEditingController fullNameController = TextEditingController();

  //<==========  Email  Controller  ==========>
  final TextEditingController emailController = TextEditingController();

  //<==========  Password  Controller  ==========>
  final TextEditingController passwerdController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //<========== Title  ==========>
            CustomeText(
              text: AppString.createAnAccount,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),

            //<========== Sub Title  ==========>
            SizedBox(height: 16),
            CustomeText(
              text: AppString.signUpSubTitle,
              textAlign: TextAlign.start,
              maxLines: 2,
              fontSize: 13,
              fontWeight: FontWeight.w400,
            ),

            //<========== FullName TextField  ==========>
            SizedBox(height: 16),
            CustomeText(
              text: AppString.fullName,
              fontSize: 16,
              fontWeight: FontWeight.w700,
            ),

            //<==========  TextField  ==========>
            SizedBox(height: 16),
            CustomeTextfield(
              controller: fullNameController,
              hintext: AppString.fullName,
            ),

            //<========== Email And Mobile Number TextField  ==========>
            SizedBox(height: 16),
            CustomeText(
              text: AppString.emailAndPhone,
              fontSize: 16,
              fontWeight: FontWeight.w700,
            ),

            //<==========  TextField  ==========>
            SizedBox(height: 16),
            CustomeTextfield(
              controller: emailController,
              hintext: AppString.typeNmbandEmail,
            ),

            //<========== Password TextField  ==========>
            SizedBox(height: 16),
            CustomeText(
              text: AppString.password,
              fontSize: 16,
              fontWeight: FontWeight.w700,
            ),

            //<==========  TextField  ==========>
            SizedBox(height: 16),
            CustomeTextfield(
              controller: passwerdController,
              hintext: AppString.password,
            ),

            //<==========  SignUp Button  ==========>
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 21.5),
              child: CustomerButton(
                buttonText: AppString.signUp,
                onTap: () {
                  //<==========  Route Here  ==========>
                },
              ),
            ),

            //<==========  Already have an account?Login  ==========>
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //<==========  Already have an account? ==========>
                CustomeText(
                  text: AppString.allreadyHaveAccount,
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                ),

                //<==========  Login  ==========>
                InkWell(
                  onTap: () {
                    //<==========  Route Here  ==========>
                    Get.toNamed(AppRoute.loginScreen);
                  },
                  child: CustomeText(
                    text: AppString.login,
                    fontSize: 13,
                    fontWeight: FontWeight.w700,
                    color: AppColors.brand,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
