import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../constants.dart';
import '../controllers/sub_tabs_nested_navigation_laptop_detail_page_controller.dart';

class SubTabsNestedNavigationLaptopDetailPageView
    extends GetView<SubTabsNestedNavigationLaptopDetailPageController> {
  final String argument;
  const SubTabsNestedNavigationLaptopDetailPageView({Key? key, required this.argument}) : super(key: key);

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
                  Get.back(id: Constants.subTabLaptopNavigatorId),
              child: const Text('Back'))
        ],
      ),
    );
  }
}
