import 'package:get/get.dart';

class CampaignController extends GetxController {
 var selected_index = 0.obs;

  var tabs = <String>["apply", "in_progress", "completed"].obs;

  var campaigns = <Map<String, dynamic>>[
    {
      "image": "https://picsum.photos/200/100?3",
      "title": "company_title",
      "desc": "company_desc",
      "tags": ["tag_fb", "tag_fashion", "tag_kids", "tag_living"]
    },
    {
      "image": "https://picsum.photos/200/100?2",
      "title": "company_title",
      "desc": "company_desc",
      "tags": ["tag_fb", "tag_fashion", "tag_kids", "tag_living"]
    },
    {
      "image": "https://picsum.photos/200/100?3",
      "title": "company_title",
      "desc": "company_desc",
      "tags": ["tag_fb", "tag_fashion", "tag_kids", "tag_living"]
    },
    {
      "image": "https://picsum.photos/200/100?4",
      "title": "company_title",
      "desc": "company_desc",
      "tags": ["tag_fb", "tag_fashion", "tag_kids", "tag_living"]
    },
  ].obs;

  void changeTab(int index) {
    selected_index.value = index;
  }
}
