import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getx_nested_navigation_example/app/routes/app_pages.dart';
import 'package:getx_nested_navigation_example/constants.dart';

import '../controllers/nested_navigation_main_controller.dart';

class NestedNavigationMainView extends GetView<NestedNavigationMainController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('NestedNavigationMainView'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => Text(
                  'Argument to detail page will be: ${controller.argumentToDetailPage.value}'),
            ),
            const SizedBox(
              height: 5,
            ),
            OutlinedButton(
                onPressed: () async {
                  controller.goToDetailPage();
                },
                child: const Text('To detail with argument')),
            const SizedBox(
              height: 50,
            ),
            Obx(
              () => Text(
                  'Argument from detail page is: ${controller.argumentFromDetailPage}'),
            )
          ],
        ),
      ),
    );
  }
}
