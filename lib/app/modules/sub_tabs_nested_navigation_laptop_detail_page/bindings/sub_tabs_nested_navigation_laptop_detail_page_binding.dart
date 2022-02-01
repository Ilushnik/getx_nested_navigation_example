import 'package:get/get.dart';

import '../controllers/sub_tabs_nested_navigation_laptop_detail_page_controller.dart';

class SubTabsNestedNavigationLaptopDetailPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SubTabsNestedNavigationLaptopDetailPageController>(
      () => SubTabsNestedNavigationLaptopDetailPageController(),
    );
  }
}
