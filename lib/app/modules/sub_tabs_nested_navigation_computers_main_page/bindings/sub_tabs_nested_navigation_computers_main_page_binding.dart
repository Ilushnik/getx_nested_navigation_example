import 'package:get/get.dart';

import '../controllers/sub_tabs_nested_navigation_computers_main_page_controller.dart';

class SubTabsNestedNavigationComputersMainPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SubTabsNestedNavigationComputersMainPageController>(
      () => SubTabsNestedNavigationComputersMainPageController(),
    );
  }
}
