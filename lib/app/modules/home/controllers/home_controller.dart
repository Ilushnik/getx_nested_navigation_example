import 'package:get/get.dart';

class HomeController extends GetxController {
  RxInt tabIndex = 0.obs;

  void  onTabClick(int newTab) {
    print('Tab $newTab');
    tabIndex(newTab);
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
