import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InfoFormController extends GetxController {
  TextEditingController id_controller = TextEditingController();
  TextEditingController email_controller = TextEditingController();
  TextEditingController phoneNo_Controller = TextEditingController();
  TextEditingController nikename_controller = TextEditingController();
  TextEditingController instagram_controller = TextEditingController();
  TextEditingController portfolio_controller = TextEditingController();
  GlobalKey<FormState> fekey = GlobalKey();
  var isValid = true.obs;
  @override
  void onInit() {
    super.onInit();
    id_controller.text = "2342356435";
  }

  void validate_and_save() {
    isValid.value = false;
    final form = fekey.currentState;
    if (form != null && form.validate()) {
      isValid.value = true;
      form.save();
      Get.snackbar("Success", "Form submitted successfully",
          snackPosition: SnackPosition.BOTTOM);
    }
    
  }
}
