import 'package:get/get.dart';
import 'package:getx_nested_navigation_example/app/modules/nested_navigation_main/controllers/nested_navigation_main_controller.dart';
import 'package:getx_nested_navigation_example/app/modules/standard_navigation_main/controllers/standard_navigation_main_controller.dart';
import 'package:getx_nested_navigation_example/app/modules/sub_tabs_nested_navigation_main/controllers/sub_tabs_nested_navigation_main_controller.dart';
import '../controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
    Get.lazyPut<StandardNavigationMainController>(
          () => StandardNavigationMainController(),
    );
    Get.lazyPut<NestedNavigationMainController>(
          () => NestedNavigationMainController(),
    );
    Get.lazyPut<SubTabsNestedNavigationMainController>(
          () => SubTabsNestedNavigationMainController(),
    );
  }
}
