import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SubTabsNestedNavigationMainController extends GetxController with GetTickerProviderStateMixin {
  late TabController tabController;
  final tabIndex = 0.obs;

  @override
  void onInit() {
    super.onInit();
    tabController = TabController(length: 2, vsync: this);
    tabController.addListener(() {
      tabIndex.value = tabController.index;
    });
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
