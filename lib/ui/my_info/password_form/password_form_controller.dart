import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PasswordFormController extends GetxController {
  TextEditingController default_password_controller = TextEditingController();
  TextEditingController password_controller = TextEditingController();
  TextEditingController confirm_password_controller = TextEditingController();
  GlobalKey<FormState> fekey = GlobalKey();

  void validate_and_save() {
    final form = fekey.currentState;
    if (form != null && form.validate()) {
      form.save();
      Get.snackbar("Success", "Form submitted successfully",
          snackPosition: SnackPosition.BOTTOM);
    }
  }
}
