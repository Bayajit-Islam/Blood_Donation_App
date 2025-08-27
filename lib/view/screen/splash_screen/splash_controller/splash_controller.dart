// ignore_for_file: await_only_futures

import 'dart:async';
import 'package:blood_donation_app/core/app_routes/app_routes.dart';
import 'package:blood_donation_app/utils/api/local_storage.dart';
import 'package:get/get.dart';

class SplashController extends GetxService {
  Timer? timer;
  var opacity = 0.0.obs;

  final LocalStorage _localStorage = Get.put(LocalStorage());

  @override
  void onInit() {
    super.onInit();
    timer = Timer.periodic(Duration(seconds: 3), (Timer t) {
      if (opacity.value != 1.0) {
        opacity.value += 0.5;
      }
    });

    Future.delayed(Duration(seconds: 3), () async {
      String? accessToken = await _localStorage.read("accessToken");

      if (accessToken != null && accessToken.isNotEmpty) {
        Get.offAllNamed(AppRoute.signUpScreen);
      } else {
        Get.toNamed(AppRoute.choiceUserType);
      }
    });
  }

  @override
  void onClose() {
    timer?.cancel();
    super.onClose();
  }
}
