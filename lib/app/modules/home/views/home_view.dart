import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_nested_navigation_example/app/modules/nested_navigation_detail/bindings/nested_navigation_detail_binding.dart';
import 'package:getx_nested_navigation_example/app/modules/nested_navigation_detail/views/nested_navigation_detail_view.dart';
import 'package:getx_nested_navigation_example/app/modules/nested_navigation_main/views/nested_navigation_main_view.dart';
import 'package:getx_nested_navigation_example/app/modules/standard_navigation_main/views/standard_navigation_main_view.dart';
import 'package:getx_nested_navigation_example/app/modules/sub_tabs_nested_navigation_main/views/sub_tabs_nested_navigation_main_view.dart';
import 'package:getx_nested_navigation_example/app/routes/app_pages.dart';
import 'package:getx_nested_navigation_example/constants.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => IndexedStack(
          index: controller.tabIndex.value,
          children: [
            StandardNavigationMainView(),
            Navigator(
              key: Get.nestedKey(Constants.nestedNavigationNavigatorId),
              initialRoute: Routes.NESTED_NAVIGATION_MAIN,
              onGenerateRoute: (routeSettings) {
                if (routeSettings.name == Routes.NESTED_NAVIGATION_MAIN) {
                  return MaterialPageRoute(builder: (context) {
                    return NestedNavigationMainView();
                  });
                } else if (routeSettings.name ==
                    Routes.NESTED_NAVIGATION_DETAIL) {
                  return GetPageRoute(
                    routeName: Routes.NESTED_NAVIGATION_DETAIL,
                    page: () => NestedNavigationDetailView(
                      argument: routeSettings.arguments as String,
                    ),
                    binding: NestedNavigationDetailBinding()
                  );
                }
              },
            ),
            SubTabsNestedNavigationMainView()
          ],
        ),
      ),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          currentIndex: controller.tabIndex.value,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.tab), label: 'Standard'),
            BottomNavigationBarItem(
                icon: Icon(Icons.tab), label: 'Nested'),
            BottomNavigationBarItem(
                icon: Icon(Icons.tab), label: 'SubTabs Nested'),
          ],
          onTap: controller.onTabClick,
        ),
      ),
    );
  }
}
