import 'package:blood_donation_app/core/app_routes/app_routes.dart';
import 'package:blood_donation_app/utils/app_colors/app_colors.dart';
import 'package:blood_donation_app/utils/static_string/app_string.dart';
import 'package:blood_donation_app/view/screen/auth_screen/login_screen/login_controller/login_controller.dart';
import 'package:blood_donation_app/view/widget/custome_text/customer_text.dart';
import 'package:blood_donation_app/view/widget/custome_textfield/custome_textfield.dart';
import 'package:blood_donation_app/view/widget/customer_button/customer_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  //<==========  Email  Controller  ==========>
  final TextEditingController emailController = TextEditingController();

  //<==========  Password  Controller  ==========>
  final TextEditingController passwerdController = TextEditingController();

  //<==========  Login  Controller  ==========>
  final LoginController _loginController = Get.put(LoginController());

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
              text: AppString.wellcomeBloodCare,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),

            //<========== Sub Title  ==========>
            SizedBox(height: 16),
            CustomeText(
              text: AppString.loginSubTitle,
              fontSize: 13,
              fontWeight: FontWeight.w400,
            ),

            //<========== Email And Mobile Number TextField  ==========>
            SizedBox(height: 27),
            CustomeText(
              text: AppString.emailAndPhone,
              fontSize: 16,
              fontWeight: FontWeight.w700,
            ),

            //<==========  TextField  ==========>
            SizedBox(height: 16),
            CustomeTextfield(
              controller: emailController,
              hintext: AppString.exampleMail,
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

            //<==========  Forgot Password  ==========>
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  onTap: () {
                    //<==========  Route Here  ==========>
                  },
                  child: CustomeText(
                    text: AppString.forgotPassword,
                    fontSize: 13,
                    fontWeight: FontWeight.w700,
                    color: AppColors.brand,
                  ),
                ),
              ],
            ),

            //<==========  lOGIN Button  ==========>
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 21.5),
              child: Obx(() {
                return _loginController.isloading.value == true
                    ? Center(child: CircularProgressIndicator())
                    : CustomerButton(
                        buttonText: AppString.login,
                        onTap: () {
                          //<==========  Route Here  ==========>
                          if (emailController.text.isNotEmpty &&
                              passwerdController.text.isNotEmpty) {
                            _loginController.login(
                              email: emailController.text.toLowerCase(),
                              password: passwerdController.text,
                            );
                          } else {
                            Get.snackbar(
                              backgroundColor: AppColors.brand,
                              "Please Fill Email And Password",
                              "",
                              colorText: AppColors.primaryText,
                            );
                          }
                        },
                      );
              }),
            ),

            //<==========  Don’t have an account?SignUp  ==========>
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //<==========  Don’t have an account? ==========>
                CustomeText(
                  text: AppString.dontHaveAccount,
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                ),

                //<==========  SignUp  ==========>
                InkWell(
                  onTap: () {
                    //<==========  Route Here  ==========>
                    Get.toNamed(AppRoute.signUpScreen);
                  },
                  child: CustomeText(
                    text: AppString.signUp,
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
