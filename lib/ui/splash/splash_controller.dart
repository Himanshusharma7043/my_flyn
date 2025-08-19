import 'dart:async';

import 'package:get/get.dart';
import 'package:my_flyn/app/routes/app_pages.dart';

class SplashController extends GetxController {
  @override
  void onInit() async {
    super.onInit();
    startProgress();
  }

  late Timer timer;
  startProgress() {
    timer = Timer.periodic(const Duration(seconds: 3), (Timer t) {
      timer.cancel();
      Get.offNamedUntil(Routes.HOME, (route) => false);
    });
  }

  @override
  void onClose() {
    timer.cancel();
    super.onClose();
  }
}
