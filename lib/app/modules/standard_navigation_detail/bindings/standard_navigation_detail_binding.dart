import 'package:get/get.dart';

import '../controllers/standard_navigation_detail_controller.dart';

class StandardNavigationDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<StandardNavigationDetailController>(
      () => StandardNavigationDetailController(),
    );
  }
}
