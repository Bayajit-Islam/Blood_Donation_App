import 'dart:convert';

import 'package:blood_donation_app/model/profile_model/profile_model.dart';
import 'package:blood_donation_app/utils/api/app_url.dart';
import 'package:blood_donation_app/utils/api/base_url.dart';
import 'package:blood_donation_app/utils/app_colors/app_colors.dart';
import 'package:get/get.dart';

class ProfileController extends GetxService {
  var profile = UserProfile(name: "", email: "").obs;
  var isLoading = false.obs;

  @override
  void onInit() {
    super.onInit();
    profileInformation();
  }

  // <===========  Get Profile Information  ==========>
  Future<void> profileInformation() async {
    try {
      isLoading(true);
      final response = await BaseUrl.getRequest(api: AppUrl.myProfile);

      if (response.statusCode == 200) {
        var jsonData = jsonDecode(response.body);
        profile.value = UserProfile.fromJson(jsonData["data"]);
      }
    } catch (e) {
      Get.snackbar(
        backgroundColor: AppColors.brand,
        "Profile Information Loading falid...",
        "Please Try Again Later",
        colorText: AppColors.primaryText,
      );
    } finally {
      isLoading(false);
    }
  }
}
