import 'package:get/get.dart';

import '../../ui/campaign/campaign_binding.dart';
import '../../ui/campaign/campaign_view.dart';
import '../../ui/home/home_binding.dart';
import '../../ui/home/home_view.dart';
import '../../ui/my_info/info_form/info_form_binding.dart';
import '../../ui/my_info/info_form/info_form_view.dart';
import '../../ui/my_info/my_info_binding.dart';
import '../../ui/my_info/my_info_view.dart';
import '../../ui/my_info/password_form/password_form_binding.dart';
import '../../ui/my_info/password_form/password_form_view.dart';
import '../../ui/splash/splash_binding.dart';
import '../../ui/splash/splash_view.dart';

part 'app_routes.dart';

class AppPages {
  static final routes = [
    GetPage(
      name: Routes.SPLASH,
      page: () => SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: Routes.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: Routes.CAMPAIGN,
      page: () => CampaignView(),
      binding: CampaignBinding(),
    ),
    GetPage(
      name: Routes.MY_INFO,
      page: () => MyInfoView(),
      binding: MyInfoBinding(),
    ),
    GetPage(
      name: Routes.INFO_FORM,
      page: () => InfoFormView(),
      binding: InfoFormBinding(),
    ),
    GetPage(
      name: Routes.PASSWORD_FORM,
      page: () => PasswordFormView(),
      binding: PasswordFormBinding(),
    ),
  ];
}
