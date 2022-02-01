import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/standard_navigation_detail_controller.dart';

class StandardNavigationDetailView
    extends GetView<StandardNavigationDetailController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('StandardNavigationDetailView'),
        centerTitle: true,
      ),
      body: Center(
        child: OutlinedButton(
          child: const Text('Go back'),
          onPressed: () => Get.back(),
        ),
      ),
    );
  }
}
