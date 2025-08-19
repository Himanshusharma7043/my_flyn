import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../app/app_colors.dart';
import '../text_styles.dart';

class CommonAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final List<Widget>? children;

  CommonAppBar({
    Key? key,
    required this.title,
    this.children,
  }) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(children != null? 165: 120);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 8, top: 50.h),
          child: IconButton(
            icon: Icon(Icons.arrow_back_ios, color: Theme.of(Get.context!).textTheme.bodyLarge?.color),
            onPressed: () => Get.back(),
          ),
        ),

        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: TextStyles.semiBold(
            text: title.tr,
            size: 23,
            color: Theme.of(Get.context!).textTheme.bodyLarge?.color,
          ),
        ),

        if (children != null) SizedBox(height: 12.h),

        if (children != null) ...children!,
      ],
    );
  }
}
