import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getx_nested_navigation_example/app/routes/app_pages.dart';

import '../controllers/standard_navigation_main_controller.dart';

class StandardNavigationMainView
    extends GetView<StandardNavigationMainController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('StandardNavigationMainView'),
        centerTitle: true,
      ),
      body: Center(
        child: OutlinedButton(
          onPressed: () => Get.toNamed(Routes.STANDARD_NAVIGATION_DETAIL),
          child: const Text('Go to detail page'),
        ),
      ),
    );
  }
}
