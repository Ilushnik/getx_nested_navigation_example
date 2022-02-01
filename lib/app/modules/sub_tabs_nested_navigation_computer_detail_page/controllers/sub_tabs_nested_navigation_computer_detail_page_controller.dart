import 'package:get/get.dart';

class SubTabsNestedNavigationComputerDetailPageController
    extends GetxController {

  final count = 0.obs;

  void setArgument(String argument){
    print('setArgument');
  }

  @override
  void onInit() {
    super.onInit();
    print('onInit');
  }

  @override
  void onReady() {
    super.onReady();
    print('onReady');
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
