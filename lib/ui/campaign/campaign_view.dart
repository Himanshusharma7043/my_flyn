import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:my_flyn/app/app_assets.dart';
import 'package:my_flyn/app/app_colors.dart';
import '../../utlis/text_styles.dart';
import '../../utlis/widget/common_app_bar.dart';
import 'campaign_controller.dart';

class CampaignView extends GetView<CampaignController> {
  CampaignView({super.key});
  final controller = Get.put(CampaignController());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => DefaultTabController(
        length: controller.tabs.length,
        child: Scaffold(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          appBar: CommonAppBar(
            title: "campaign_matching",
            children: [
              TabBar(
                onTap: (index) => controller.changeTab(index),
                indicatorColor: AppColors.purple,
                labelStyle: TextStyle(
                  fontFamily: "Pretendard",
                  fontWeight: FontWeight.w600,
                  fontSize: 16.sp,
                  color: Theme.of(Get.context!).textTheme.bodyLarge?.color,
                ),
                unselectedLabelStyle: TextStyle(
                  fontFamily: "Pretendard",
                  fontWeight: FontWeight.w400,
                  fontSize: 14.sp,
                  color: Theme.of(Get.context!).textTheme.bodyLarge?.color,
                ),
                labelColor: Theme.of(Get.context!).textTheme.bodyLarge?.color,
                unselectedLabelColor: Colors.grey,
                tabs: controller.tabs.map((t) => Tab(text: t.tr)).toList(),
              ),
            ],
          ),
          body: TabBarView(
            physics: NeverScrollableScrollPhysics(),
            children: List.generate(
              controller.tabs.length,
              (index) => buildCampaignList(),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildCampaignList() {
    return Obx(
      () => ListView.builder(
        itemCount: controller.campaigns.length,
        padding: EdgeInsets.all(12),
        itemBuilder: (context, index) {
          final item = controller.campaigns[index];
          return Container(
            margin: EdgeInsets.only(bottom: 12.h),
            decoration: BoxDecoration(
              color: Theme.of(context).scaffoldBackgroundColor,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Colors.transparent),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: FadeInImage.assetNetwork(
                    placeholder:
                        AppAssets.default_image,
                    image: item["image"],
                    width: 90.w,
                    height: 90.h,
                    fit: BoxFit.cover,
                    imageErrorBuilder: (context, error, stackTrace) {
                      return Image.asset(
                        AppAssets.default_image,
                        width: 90.w,
                        height: 90.h,
                        fit: BoxFit.cover,
                      );
                    },
                  ),
                ),

                SizedBox(width: 10),

                Container(
                  width: Get.width * 0.66,
                  color: Theme.of(context).scaffoldBackgroundColor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextStyles.semiBold(
                            text: item["title"].toString().tr,
                            size: 14,
                            color: Theme.of(Get.context!)
                                .textTheme
                                .bodyLarge
                                ?.color,
                          ),
                          SizedBox(height: 4),
                          TextStyles.semiBold(
                            text: item["desc"].toString().tr,
                            size: 12,
                            color:
                                (Theme.of(context).textTheme.bodyLarge?.color ??
                                        Colors.black)
                                    .withOpacity(0.7),
                          ),
                        ],
                      ),
                      SizedBox(width: 20.w, height: 20.h),

                      Wrap(
                        spacing: 4,
                        runSpacing: 0,
                        children: (item["tags"] as List<String>)
                            .map(
                              (tag) => Chip(
                                label: TextStyles.semiBold(
                                  text: tag.tr,
                                  size: 10,
                                  color: AppColors.purple,
                                ),
                                padding: EdgeInsets.zero,
                                labelPadding: EdgeInsets.symmetric(
                                    horizontal: 6.w, vertical: 0),
                                visualDensity: VisualDensity.compact,
                                backgroundColor: AppColors.purple_light,
                              ),
                            )
                            .toList(),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
