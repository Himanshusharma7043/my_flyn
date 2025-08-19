import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../app/app_colors.dart';
import '../text_styles.dart';

class MenuItem extends StatelessWidget {
  final String? imagePath;
  final String title;
  final VoidCallback? onTap;

  const MenuItem({
    Key? key,
    this.imagePath,
    required this.title,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: imagePath == null
              ? null
              : Image.asset(
                  imagePath!,
                  width: 16.w,
                  height: 16.h,
                  fit: BoxFit.contain,
                  color: Theme.of(Get.context!).textTheme.bodyLarge?.color
                ),
          title: TextStyles.semiBold(
            text: title.tr,
            size: 14,
            color: Theme.of(Get.context!).textTheme.bodyLarge?.color,
          ),
          trailing: InkWell(
            onTap: onTap,
            child: Icon(
              Icons.arrow_forward_ios,
              color: Theme.of(Get.context!).textTheme.bodyLarge?.color,
              size: 16.sp,
            ),
          ),
          onTap: onTap,
        ),
        Divider(
          color: AppColors.grey,
          thickness: 1,
          height: 1,
        ),
      ],
    );
  }
}
