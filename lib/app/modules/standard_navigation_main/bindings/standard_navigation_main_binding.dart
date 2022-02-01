import 'package:get/get.dart';

import '../controllers/standard_navigation_main_controller.dart';

class StandardNavigationMainBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<StandardNavigationMainController>(
      () => StandardNavigationMainController(),
    );
  }
}
