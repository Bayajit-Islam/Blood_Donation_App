import 'dart:convert';

import 'package:blood_donation_app/core/app_routes/app_routes.dart';
import 'package:blood_donation_app/utils/api/app_url.dart';
import 'package:blood_donation_app/utils/api/base_url.dart';
import 'package:blood_donation_app/utils/api/local_storage.dart';
import 'package:blood_donation_app/utils/app_colors/app_colors.dart';
import 'package:get/get.dart';

class LoginController extends GetxService {
  var isloading = false.obs;

  void login({required String email, required String password}) async {
    Map<String, dynamic> body = {"email": email, "password": password};

    try {
      isloading(true);
      final response = await BaseUrl.postRequest(
        api: AppUrl.logIn,
        body: body,
      );

      if (response.statusCode == 200 ||
          response.statusCode == 404 ||
          response.statusCode == 400) {
        final body = jsonDecode(response.body);

        String message = "";
        String subMessage = "";
        //<==========  incorrect Password  ==========>
        if (body["success"] == false &&
            body["message"] == "Password does not match") {
          message = body["message"];
          subMessage = " incorrect Password";
          //<==========  incorrect Username  ==========>
        } else if (body["success"] == false &&
            body["message"] == "User not found") {
          message = body["message"];
          subMessage = "Please Create a Account";
          //<==========  Login Success  ==========>
        } else if (body["success"] == true &&
            body["message"] == "Logged in successfully") {
          //<==========  get accessToken value  ==========>
          String accessToken = body["data"]["accessToken"];

          //<========== Store AceesToken  ==========>

          final LocalStorage localStorage = Get.put(LocalStorage());
          localStorage.write("accessToken", accessToken);

          message = body["message"];
          subMessage = "WellCome Back";

          //<==========  IF LOGIN SUCCESS ROUTE HOME PAGES  ==========>
          Get.offAllNamed(AppRoute.homeScreen);
        }
        Get.snackbar(backgroundColor: AppColors.green, message, subMessage);
      } else {
        Get.snackbar(
          backgroundColor: AppColors.brand,
          "Login Faild",
          "Please Try Again",
        );
      }
    } catch (e) {
      Get.snackbar(
        backgroundColor: AppColors.brand,
        "Login Faild",
        "Please Try Again Later",
        colorText: AppColors.primaryText,
      );
    } finally {
      isloading(false);
    }
  }
}
