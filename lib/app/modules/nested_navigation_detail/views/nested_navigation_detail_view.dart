import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:get/get.dart';
import 'package:getx_nested_navigation_example/constants.dart';

import '../controllers/nested_navigation_detail_controller.dart';

class NestedNavigationDetailView
    extends GetView<NestedNavigationDetailController> {
  String argument;
  NestedNavigationDetailView({Key? key, required this.argument})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('NestedNavigationDetailView'),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Argument from main page is: $argument'),
          const SizedBox(
            height: 50,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Argument to main screen'),
              Obx(
                () => Slider(
                    min: 0,
                    max: 100,
                    value: controller.count.value,
                    divisions: 100,
                    label: '${controller.count.value.toInt()}',
                    onChanged: (value) => controller.count.value = value),
              )
            ],
          ),
          OutlinedButton(
            onPressed: () => Get.back(
              result: controller.count.value,
              id: Constants.nestedNavigationNavigatorId,
            ),
            child: const Text('Go back with argument'),
          )
        ],
      ),
    );
  }
}
