import 'package:get/get.dart';

import 'info_form_controller.dart';

class InfoFormBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<InfoFormController>(
      () => InfoFormController(),
    );
  }
}
