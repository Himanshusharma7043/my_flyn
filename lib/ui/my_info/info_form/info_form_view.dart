import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../../../app/app_assets.dart';
import '../../../app/app_colors.dart';
import '../../../utlis/widget/build_text_feild.dart';
import '../../../utlis/widget/common_app_bar.dart';
import 'info_form_controller.dart';

class InfoFormView extends GetView<InfoFormController> {
  InfoFormView({super.key});
  final _controller = Get.put(InfoFormController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: CommonAppBar(
        title: "my_info",
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
                          labelText: "id".tr,
                          controller: _controller.id_controller,
                          keyboardType: TextInputType.number,
                          validation: "noValidation",
                          textColors:
                              Theme.of(Get.context!).textTheme.bodyLarge?.color,
                          titleColors:
                              Theme.of(Get.context!).textTheme.bodyLarge?.color,
                          hintText: "id".tr,
                          enabled: false,
                          textInputAction: TextInputAction.done,
                        ),
                        BuildTextFeild(
                          labelText: "email".tr,
                          controller: _controller.email_controller,
                          keyboardType: TextInputType.emailAddress,
                          validation: "validateEmail",
                          textColors:
                              Theme.of(Get.context!).textTheme.bodyLarge?.color,
                          titleColors:
                              Theme.of(Get.context!).textTheme.bodyLarge?.color,
                          hintText: "please_enter_email".tr,
                          textInputAction: TextInputAction.done,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: BuildTextFeild(
                                labelText: "phone_number".tr,
                                controller: _controller.phoneNo_Controller,
                                keyboardType: TextInputType.number,
                                validation: "validateNumber",
                                textColors: Theme.of(Get.context!)
                                    .textTheme
                                    .bodyLarge
                                    ?.color,
                                titleColors: Theme.of(Get.context!)
                                    .textTheme
                                    .bodyLarge
                                    ?.color,
                                hintText: "phone_number".tr,
                                textInputAction: TextInputAction.done,
                              ),
                            ),
                            SizedBox(width: 8.w),
                            Obx(() => Container(
                                  margin: EdgeInsets.only(
                                    top: _controller.isValid.value ? 15.h : 2.h,
                                  ),
                                  child: ElevatedButton(
                                    onPressed: () {
                                    },
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: AppColors.purple,
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 10.w, vertical: 10.h),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(8.r),
                                      ),
                                    ),
                                    child: Text(
                                      "Change".tr,
                                      style: TextStyle(
                                        color: Theme.of(context)
                                            .scaffoldBackgroundColor,
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                )),
                          ],
                        ),
                        BuildTextFeild(
                          labelText: "nickname".tr,
                          controller: _controller.nikename_controller,
                          keyboardType: TextInputType.text,
                          validation: "validateNotEmpty",
                          textColors:
                              Theme.of(Get.context!).textTheme.bodyLarge?.color,
                          titleColors:
                              Theme.of(Get.context!).textTheme.bodyLarge?.color,
                          hintText: "nickname".tr,
                          textInputAction: TextInputAction.done,
                        ),
                        BuildTextFeild(
                          labelText: "instagram_id".tr,
                          controller: _controller.instagram_controller,
                          keyboardType: TextInputType.url,
                          validation: "validateNotEmpty",
                          textColors:
                              Theme.of(Get.context!).textTheme.bodyLarge?.color,
                          titleColors:
                              Theme.of(Get.context!).textTheme.bodyLarge?.color,
                          hintText: "instagram_id".tr,
                          textInputAction: TextInputAction.done,
                        ),
                        BuildTextFeild(
                          labelText: "portfolio".tr,
                          controller: _controller.portfolio_controller,
                          keyboardType: TextInputType.text,
                          validation: "validateNotEmpty",
                          textColors:
                              Theme.of(Get.context!).textTheme.bodyLarge?.color,
                          titleColors:
                              Theme.of(Get.context!).textTheme.bodyLarge?.color,
                          hintText: "portfolio".tr,
                          textInputAction: TextInputAction.done,
                          isFileUpload: true,
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
