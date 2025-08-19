import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:my_flyn/app/app_colors.dart';

import '../../app/app_assets.dart';
import '../../app/routes/routes.dart';
import '../../utlis/text_styles.dart';
import '../../utlis/widget/menu_item.dart';
import 'home_controller.dart';

class HomeView extends GetView<HomeController> {
  HomeView({super.key});
  final controller = Get.put(HomeController());

  Widget _buildCampaignItem(RxInt value, String label) {
    return Obx(() => Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextStyles.semiBold(
              text: value.toString(),
              size: 20,
              color: AppColors.purple,
            ),
            SizedBox(height: 2.h),
            TextStyles.semiBold(
              text: label,
              size: 14,
              color: AppColors.black,
            ),
          ],
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Obx(() => Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextStyles.regular(
                            text: "hello".tr,
                            size: 20,
                            color: Theme.of(Get.context!)
                                .textTheme
                                .bodyLarge
                                ?.color,
                          ),
                          TextStyles.semiBold(
                            text: controller.user_name.value,
                            size: 28,
                            color: Theme.of(Get.context!)
                                .textTheme
                                .bodyLarge
                                ?.color,
                          ),
                        ],
                      )),
                  Column(
                    children: [
                      CircleAvatar(
                        radius: 40.r,
                        backgroundColor: AppColors.grey,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              AppAssets.ic_5_camera,
                              width: 22.w,
                              height: 22.w,
                              color: AppColors.grey_dark,
                            ),
                            TextStyles.regular(
                              text: "add_image".tr,
                              size: 10,
                              color: AppColors.grey_dark,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 4.h),
                    ],
                  )
                ],
              ),
              SizedBox(height: 30.h),
              Container(
                padding: EdgeInsets.all(16.w),
                decoration: BoxDecoration(
                  color: AppColors.card_bg,
                  border: Border.all(color: AppColors.grey),
                  borderRadius: BorderRadius.circular(12.r),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextStyles.semiBold(
                          text: "my_campaign".tr,
                          size: 12,
                          color: AppColors.black,
                        ),
                        InkWell(
                          onTap: () {
                            Get.toNamed(Routes.CAMPAIGN);
                          },
                          borderRadius: BorderRadius.circular(20.r),
                          child: Icon(
                            Icons.arrow_forward_ios,
                            size: 14.sp,
                            color: Colors.grey,
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 16.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        _buildCampaignItem(controller.apply_count, "apply".tr),
                        Icon(Icons.arrow_forward_ios,
                            size: 12.sp, color: Colors.grey),
                        _buildCampaignItem(
                            controller.in_progress_count, "in_progress".tr),
                        Icon(Icons.arrow_forward_ios,
                            size: 12.sp, color: Colors.grey),
                        _buildCampaignItem(
                            controller.completed_count, "completed".tr),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 20.h),
              MenuItem(
                  imagePath: AppAssets.user,
                  title: "my_info",
                  onTap: () {
                    Get.toNamed(Routes.MY_INFO);
                  }),
              MenuItem(imagePath: AppAssets.note, title: "notice"),
              MenuItem(imagePath: AppAssets.messages, title: "inquiry"),
              MenuItem(imagePath: AppAssets.message_question, title: "faq"),
              MenuItem(imagePath: AppAssets.task_square, title: "terms"),
              MenuItem(imagePath: AppAssets.logout, title: "logout"),
              MenuItem(imagePath: AppAssets.break_away, title: "withdraw"),
              MenuItem(
                imagePath: AppAssets.theme,
                title: "toggle_theme",
                onTap: controller.toggle_theme
              ),
              MenuItem(
                imagePath: AppAssets.lanaguage,
                title: "toggle_language",
                onTap: controller.toggle_language
              ),
            ],
          ),
        ),
      ),
    );
  }
}
