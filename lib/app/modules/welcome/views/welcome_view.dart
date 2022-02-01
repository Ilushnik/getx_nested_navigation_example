import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_nested_navigation_example/app/routes/app_pages.dart';

import '../controllers/welcome_controller.dart';

class WelcomeView extends GetView<WelcomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('WelcomeView'),
        centerTitle: true,
      ),
      body: Center(
          child: OutlinedButton(
              onPressed: () => Get.offAndToNamed(Routes.HOME),
              child: const Text('Go to Tabs View'))),
    );
  }
  }

