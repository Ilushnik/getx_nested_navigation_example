import 'package:get/get.dart';
import 'package:getx_nested_navigation_example/app/routes/app_pages.dart';
import 'package:getx_nested_navigation_example/constants.dart';

class NestedNavigationMainController extends GetxController {
  final RxString argumentToDetailPage = RxString('you are the best!');
  final RxString argumentFromDetailPage = RxString('no argument yet');

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  Future goToDetailPage() async {
    var result = await Get.toNamed(Routes.NESTED_NAVIGATION_DETAIL,
        arguments: argumentToDetailPage.value,
        id: Constants.nestedNavigationNavigatorId);
    argumentFromDetailPage.value =
    result == null ? 'No argument' : (result as double).toStringAsFixed(0);
  }

  @override
  void onClose() {}

}
