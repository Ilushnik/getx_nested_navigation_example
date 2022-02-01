import 'package:get/get.dart';

import '../controllers/sub_tabs_nested_navigation_main_controller.dart';

class SubTabsNestedNavigationMainBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SubTabsNestedNavigationMainController>(
      () => SubTabsNestedNavigationMainController(),
    );
  }
}
