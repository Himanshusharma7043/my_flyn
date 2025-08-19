import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../../app/app_assets.dart';
import '../../app/app_colors.dart';
import '../../app/routes/routes.dart';
import '../../utlis/widget/common_app_bar.dart';
import '../../utlis/widget/menu_item.dart';
import 'my_info_controller.dart';

class MyInfoView extends GetView<MyInfoController> {
  MyInfoView({super.key});
  final controller = Get.put(MyInfoController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: CommonAppBar(
        title: "campaign_matching",
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20.w, vertical: 0.h),
        child: Column(
          children: [
            SizedBox(height: 20.h),
            MenuItem(
                title: "my_info",
                onTap: () {
                  Get.toNamed(Routes.INFO_FORM);
                }),
            MenuItem(
                title: "password_settings",
                onTap: () {
                  Get.toNamed(Routes.PASSWORD_FORM);
                }),
            MenuItem(title: "interest_categories"),
          ],
        ),
      ),
    );
  }
}
