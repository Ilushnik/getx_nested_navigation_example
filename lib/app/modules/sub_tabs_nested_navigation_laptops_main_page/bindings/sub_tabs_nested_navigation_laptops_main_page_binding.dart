import 'package:get/get.dart';

import '../controllers/sub_tabs_nested_navigation_laptops_main_page_controller.dart';

class SubTabsNestedNavigationLaptopsMainPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SubTabsNestedNavigationLaptopsMainPageController>(
      () => SubTabsNestedNavigationLaptopsMainPageController(),
    );
  }
}
