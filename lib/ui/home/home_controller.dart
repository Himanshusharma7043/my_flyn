import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  var user_name = "홍길동님".obs;

  var apply_count = 10.obs;
  var in_progress_count = 20.obs;
  var completed_count = 30.obs;

  void update_user(String name) {
    user_name.value = name;
  }

  void increase_progress() {
    in_progress_count.value++;
  }

  void toggle_theme() {
    if (Get.isDarkMode) {
      Get.changeThemeMode(ThemeMode.light);
    } else {
      Get.changeThemeMode(ThemeMode.dark);
    }
  }

  void toggle_language() {
    Locale currentLocale = Get.locale ?? const Locale('en', 'US');
    if (currentLocale.languageCode == 'en') {
      Get.updateLocale(const Locale('ko', 'KR'));
    } else {
      Get.updateLocale(const Locale('en', 'US'));
    }
  }
}
