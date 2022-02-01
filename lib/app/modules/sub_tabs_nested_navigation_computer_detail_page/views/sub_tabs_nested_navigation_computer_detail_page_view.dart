import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getx_nested_navigation_example/constants.dart';

import '../controllers/sub_tabs_nested_navigation_computer_detail_page_controller.dart';

class SubTabsNestedNavigationComputerDetailPageView
    extends GetView<SubTabsNestedNavigationComputerDetailPageController> {
  final String argument;
  const SubTabsNestedNavigationComputerDetailPageView(
      {Key? key, required this.argument})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    controller.setArgument(argument);
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Argument is: $argument',
            style: const TextStyle(fontSize: 20),
          ),
          const SizedBox(height: 40,),
          OutlinedButton(
              onPressed: () =>
                  Get.back(id: Constants.subTabComputerNavigatorId),
              child: const Text('Back'))
        ],
      ),
    );
  }
}
