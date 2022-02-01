import 'package:get/get.dart';
import 'package:getx_nested_navigation_example/app/data/repository.dart';

class SubTabsNestedNavigationComputersMainPageController
    extends GetxController with StateMixin<List<String>> {

  @override
  void onInit() {
    super.onInit();
    change(null, status: RxStatus.loading());
    Repository().getComputers.then((result) => change(result, status: RxStatus.success()))
        .onError((error, stackTrace) => change(null, status: RxStatus.error()));
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
