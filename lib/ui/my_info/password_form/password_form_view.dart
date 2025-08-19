import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../../../app/app_colors.dart';
import '../../../utlis/widget/build_text_feild.dart';
import '../../../utlis/widget/common_app_bar.dart';
import 'password_form_controller.dart';

class PasswordFormView extends GetView<PasswordFormController> {
  PasswordFormView({super.key});
  final _controller = Get.put(PasswordFormController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: CommonAppBar(
        title: "set_password",
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
        child: IntrinsicHeight(
          child: Container(
            margin: EdgeInsets.symmetric(),
            child: Column(
              children: [
                Expanded(
                  child: Form(
                    key: _controller.fekey,
                    child: Column(
                      children: [
                        BuildTextFeild(
                          labelText: "default_password".tr,
                          controller: _controller.default_password_controller,
                          keyboardType: TextInputType.visiblePassword,
                          validation: "password",
                          textColors:
                              Theme.of(Get.context!).textTheme.bodyLarge?.color,
                          titleColors:
                              Theme.of(Get.context!).textTheme.bodyLarge?.color,
                          hintText: "default_password".tr,
                          requiredField: true,
                          textInputAction: TextInputAction.done,
                        ),
                        BuildTextFeild(
                          labelText: "new_password".tr,
                          controller: _controller.password_controller,
                          keyboardType: TextInputType.visiblePassword,
                          validation: "password",
                          textColors:
                              Theme.of(Get.context!).textTheme.bodyLarge?.color,
                          titleColors:
                              Theme.of(Get.context!).textTheme.bodyLarge?.color,
                          hintText: "new_password".tr,
                          requiredField: true,
                          textInputAction: TextInputAction.done,
                        ),
                        BuildTextFeild(
                          labelText: "confirm_password".tr,
                          controller: _controller.confirm_password_controller,
                          keyboardType: TextInputType.visiblePassword,
                          passwordController: _controller.password_controller,
                          validation: "validateConfirmPassword",
                          textColors:
                              Theme.of(Get.context!).textTheme.bodyLarge?.color,
                          titleColors:
                              Theme.of(Get.context!).textTheme.bodyLarge?.color,
                          hintText: "confirm_password".tr,
                          requiredField: true,
                          textInputAction: TextInputAction.done,
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        Container(
                          width: Get.width,
                          child: ElevatedButton(
                            onPressed: _controller.validate_and_save,
                            style: ElevatedButton.styleFrom(
                              backgroundColor: AppColors.purple,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10.w, vertical: 10.h),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.r),
                              ),
                            ),
                            child: Text(
                              "save".tr,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
