import 'package:blood_donation_app/utils/api/app_url.dart';
import 'package:blood_donation_app/utils/api/base_url.dart';
import 'package:blood_donation_app/utils/app_colors/app_colors.dart';
import 'package:get/get.dart';

class SignupController extends GetxService {
  var isLoading = false.obs;

  Future<void> signUp({
    required String name,
    required String email,
    required String password,
  }) async {
    Map<String, dynamic> body = {
      "name": name,
      "email": email,
      "password": password,
    };

    try {
      isLoading(true);
      final response = await BaseClient.postRequest(
        api: AppUrl.signUp,
        body: body,
      );

      if (response.statusCode == 200) {
        Get.snackbar(
          backgroundColor: AppColors.green,
          "SignUp Success",
          "Please Login Now",
          colorText: AppColors.primaryText,
        );
      }
    } catch (e) {
      Get.snackbar(
        backgroundColor: AppColors.brand,
        "SignUp Faild",
        "Please Try Again Later",
        colorText: AppColors.primaryText,
      );
    } finally {
      isLoading(false);
    }
  }
}
