import 'dart:async';
import 'package:blood_donation_app/core/app_routes/app_routes.dart';
import 'package:get/get.dart';

class SplashController extends GetxService {
  Timer? timer;
  var opacity = 0.0.obs;

  @override
  void onInit() {
    super.onInit();
    timer = Timer.periodic(Duration(seconds: 3), (Timer t) {
      if (opacity.value != 1.0) {
        opacity.value += 0.5;
      }
    });

    Future.delayed(Duration(seconds: 3), () {
      Get.toNamed(AppRoute.choiceUserType);
    });
  }

  @override
  void onClose() {
    timer?.cancel();
    super.onClose();
  }
}
