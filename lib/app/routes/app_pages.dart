import 'package:get/get.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/nested_navigation_detail/bindings/nested_navigation_detail_binding.dart';
import '../modules/nested_navigation_detail/views/nested_navigation_detail_view.dart';
import '../modules/nested_navigation_main/bindings/nested_navigation_main_binding.dart';
import '../modules/nested_navigation_main/views/nested_navigation_main_view.dart';
import '../modules/standard_navigation_detail/bindings/standard_navigation_detail_binding.dart';
import '../modules/standard_navigation_detail/views/standard_navigation_detail_view.dart';
import '../modules/standard_navigation_main/bindings/standard_navigation_main_binding.dart';
import '../modules/standard_navigation_main/views/standard_navigation_main_view.dart';
import '../modules/sub_tabs_nested_navigation_computer_detail_page/bindings/sub_tabs_nested_navigation_computer_detail_page_binding.dart';
import '../modules/sub_tabs_nested_navigation_computer_detail_page/views/sub_tabs_nested_navigation_computer_detail_page_view.dart';
import '../modules/sub_tabs_nested_navigation_computers_main_page/bindings/sub_tabs_nested_navigation_computers_main_page_binding.dart';
import '../modules/sub_tabs_nested_navigation_computers_main_page/views/sub_tabs_nested_navigation_computers_main_page_view.dart';
import '../modules/sub_tabs_nested_navigation_laptop_detail_page/bindings/sub_tabs_nested_navigation_laptop_detail_page_binding.dart';
import '../modules/sub_tabs_nested_navigation_laptop_detail_page/views/sub_tabs_nested_navigation_laptop_detail_page_view.dart';
import '../modules/sub_tabs_nested_navigation_laptops_main_page/bindings/sub_tabs_nested_navigation_laptops_main_page_binding.dart';
import '../modules/sub_tabs_nested_navigation_laptops_main_page/views/sub_tabs_nested_navigation_laptops_main_page_view.dart';
import '../modules/sub_tabs_nested_navigation_main/bindings/sub_tabs_nested_navigation_main_binding.dart';
import '../modules/sub_tabs_nested_navigation_main/views/sub_tabs_nested_navigation_main_view.dart';
import '../modules/welcome/bindings/welcome_binding.dart';
import '../modules/welcome/views/welcome_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.WELCOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.WELCOME,
      page: () => WelcomeView(),
      binding: WelcomeBinding(),
    ),
    GetPage(
      name: _Paths.STANDARD_NAVIGATION_MAIN,
      page: () => StandardNavigationMainView(),
      binding: StandardNavigationMainBinding(),
    ),
    GetPage(
      name: _Paths.STANDARD_NAVIGATION_DETAIL,
      page: () => StandardNavigationDetailView(),
      binding: StandardNavigationDetailBinding(),
    ),
    GetPage(
      name: _Paths.NESTED_NAVIGATION_DETAIL,
      page: () => NestedNavigationDetailView(argument: 'default argument',),
      binding: NestedNavigationDetailBinding(),
    ),
    GetPage(
      name: _Paths.NESTED_NAVIGATION_MAIN,
      page: () => NestedNavigationMainView(),
      binding: NestedNavigationMainBinding(),
    ),
    GetPage(
      name: _Paths.SUB_TABS_NESTED_NAVIGATION_MAIN,
      page: () => SubTabsNestedNavigationMainView(),
      binding: SubTabsNestedNavigationMainBinding(),
    ),
    GetPage(
      name: _Paths.SUB_TABS_NESTED_NAVIGATION_COMPUTERS_MAIN_PAGE,
      page: () => SubTabsNestedNavigationComputersMainPageView(),
      binding: SubTabsNestedNavigationComputersMainPageBinding(),
    ),
    GetPage(
      name: _Paths.SUB_TABS_NESTED_NAVIGATION_COMPUTER_DETAIL_PAGE,
      page: () => SubTabsNestedNavigationComputerDetailPageView(argument: '',),
      binding: SubTabsNestedNavigationComputerDetailPageBinding(),
    ),
    GetPage(
      name: _Paths.SUB_TABS_NESTED_NAVIGATION_LAPTOP_DETAIL_PAGE,
      page: () => SubTabsNestedNavigationLaptopDetailPageView(argument: '',),
      binding: SubTabsNestedNavigationLaptopDetailPageBinding(),
    ),
    GetPage(
      name: _Paths.SUB_TABS_NESTED_NAVIGATION_LAPTOPS_MAIN_PAGE,
      page: () => SubTabsNestedNavigationLaptopsMainPageView(),
      binding: SubTabsNestedNavigationLaptopsMainPageBinding(),
    ),
  ];
}
