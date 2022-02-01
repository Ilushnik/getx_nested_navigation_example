import 'package:get/get.dart';

import '../controllers/nested_navigation_detail_controller.dart';

class NestedNavigationDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NestedNavigationDetailController>(
      () => NestedNavigationDetailController(),
    );
  }
}
