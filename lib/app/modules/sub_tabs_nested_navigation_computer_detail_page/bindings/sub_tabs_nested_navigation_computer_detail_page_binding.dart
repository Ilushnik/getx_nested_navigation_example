import 'package:get/get.dart';

import '../controllers/sub_tabs_nested_navigation_computer_detail_page_controller.dart';

class SubTabsNestedNavigationComputerDetailPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SubTabsNestedNavigationComputerDetailPageController>(
      () => SubTabsNestedNavigationComputerDetailPageController(),
    );
  }
}
