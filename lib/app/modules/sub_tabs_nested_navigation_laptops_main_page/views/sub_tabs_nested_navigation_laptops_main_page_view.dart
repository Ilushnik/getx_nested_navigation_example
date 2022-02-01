import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_nested_navigation_example/app/routes/app_pages.dart';

import '../../../../constants.dart';
import '../controllers/sub_tabs_nested_navigation_laptops_main_page_controller.dart';

class SubTabsNestedNavigationLaptopsMainPageView
    extends GetView<SubTabsNestedNavigationLaptopsMainPageController> {
  @override
  Widget build(BuildContext context) {
    return controller.obx(
      (data) => ListView.builder(
        itemBuilder: (BuildContext context, int index) => ListTile(
          title: Text(data![index]),
          onTap: () => Get.toNamed(
              Routes.SUB_TABS_NESTED_NAVIGATION_LAPTOP_DETAIL_PAGE,
              arguments: data[index],
              id: Constants.subTabLaptopNavigatorId),
        ),
        itemCount: data!.length,
      ),
      onLoading: const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
